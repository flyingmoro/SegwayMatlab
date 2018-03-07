m_Rad = 0.2;
r = 0.05;
r_i = 25*10^(-3);
b_Rad = 0.042;

J_yRad = m_Rad * (r^2+r_i^2) / 2;
J_zRad = m_Rad * (3/8 *r^2 + b_Rad / 12);

m_Ro = 2;
d_Ro = 0.08;
h_Ro = 0.15;
b_Ro = 0.18;

J_yRo = m_Ro/12 * (d_Ro^2 + h_Ro^2);
J_zRo = m_Ro/12 * (d_Ro^2 + b_Ro^2);

l_a = 0.184;
h_SA = 0.08;
h = 1000;
g=9.81;

sig1 = J_yRad + r^2*( m_Ro/4 + m_Rad + J_zRo / l_a^2 + 2*J_zRad / l_a^2);

sig2 = r^2 * ( m_Ro / 4 - J_zRo / l_a^2 - 2*J_zRad / l_a^2);

M = [ sig1, sig2, h_SA * m_Ro * r /2;...
      sig2, sig1, h_SA * m_Ro * r /2;...
      h_SA * m_Ro * r /2, h_SA * m_Ro * r /2, m_Ro * h_SA^2 + J_yRo ];

Mi = inv(M);

C = [ 0; 0; -g*h_SA*m_Ro ];

s = tf('s');
%Kippdynamik
G_Roboter = (Mi(3,1)-Mi(3,3))/(s^2+Mi(3,3)*C(3));
%Motorkonstante
k_Motor = 1/12.09;
%Motorstrecke
G_Motor = 80/(s+80)*k_Motor;
%Regelstrecke
G_S = G_Motor*G_Roboter;
%PD Regler
TV = 1/14.05;
k_PD = -60;
C = k_PD*(1+TV*s);
%Betabuffer
b = 30;
H = 2000/(2000+b*s);
sisotool;