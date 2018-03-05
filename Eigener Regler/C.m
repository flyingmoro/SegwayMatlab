function Cout = C( p )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
g = 9.81;
h_SA = 0.08;
m_Ro = 2;
C = [ 0; 0; -g*h_SA*m_Ro ];
Cout = C * p(3);
end

