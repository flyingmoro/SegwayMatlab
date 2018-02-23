function Mout = Minv( p )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% p(1) = phi1pp, p(2) = phi2pp p(3) = betapp
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

l_a = 0.14;
h_SA = 0.08;
h = 1000;
g=9.81;

sig1 = J_yRad + r^2*( m_Ro/4 + m_Rad + J_zRo / l_a^2 + 2*J_zRad / l_a^2);

sig2 = r^2 * ( m_Ro / 4 - J_zRo / l_a^2 - 2*J_zRad / l_a^2);

M = [ sig1, sig2, h_SA * m_Ro * r /2;...
      sig2, sig1, h_SA * m_Ro * r /2;...
      h_SA * m_Ro * r /2, h_SA * m_Ro * r /2, m_Ro * h_SA^2 + J_yRo ];

Mi = inv(M);
  
Mout = Mi * p ;
end

