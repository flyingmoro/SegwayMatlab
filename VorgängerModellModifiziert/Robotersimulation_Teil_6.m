%  Durch die Befehle werden die Skripte von Teil 1-5 automatisch ausgeführt
%  und das enstprechende Simulink Modell geöffnet
Robotersimulation_Teil_1
Robotersimulation_Teil_2
Robotersimulation_Teil_3
Robotersimulation_Teil_4
Robotersimulation_Teil_5

Segway_Regelung_Roboter



R_Kipp_Roboter = R_kipp;

F_Roboter = [0      -m2*l_SP*r_Rad;
             0      0];

         
%   Führt für den gefertigten Roboter eine Simulation aus und
%   speichert die Graphen von Phi1, Phi1p und Phi2, sowie derren
%   Extremwerte ab

%   Ausfürhen der Simulation
sim('Segway_Regelung_Roboter', [0 3])

%   Aufnehmen der Werte von Phi1
sig1=ScopeData_p1.getElement('p1').Values;
pl1_Roboter = sig1;

%   Extremwert Phi1 ablesen
min_p1=abs(min(sig1.Data));
V_min_p1_Roboter=min_p1;
%%%%%%%%%%%%%%%

%   Aufnehmen der Werte von Phi1p
sig2=ScopeData_p1p.getElement('p1p').Values;
pl2_Roboter = sig2;

%   Dient zur Abfrage, ob das System die max. Geschwindigkeit innerhalb von
%   drei Sekunden geschafft hat
v = find(sig2.Data>2.1,1);
if (v>0)
v_wert = sig2.Time(v);
else
v_wert=0;
end

V_grenze_p1p_Roboter = v_wert;
%%%%%%%%%%%%%%%

%   Aufnehmen der Werte von Phi2
sig3 = ScopeData_p2.getElement('p2').Values;
pl3_Roboter = sig3;

%   Extremwert Phi2 ablesen
max_p2 = max(sig3.Data);
V_max_p2_Roboter = max_p2;

%   Speichert die Extremwerte der Simulationen in einer Tabelle ab
xlswrite('Extremwert Roboter Phi1',V_min_p1_Roboter,1,'A1');
xlswrite('Extremwert Roboter Phi1p',V_grenze_p1p_Roboter,1,'B1');
xlswrite('Extremwert Roboter Phi2',V_max_p2_Roboter,1,'C1');