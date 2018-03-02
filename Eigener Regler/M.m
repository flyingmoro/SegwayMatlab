function Mout = Minv( p )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% p(1) = phi1pp, p(2) = phi2pp p(3) = betapp

sig1 = J_yRad + r^2*( m_Ro/4 + m_Rad + J_zRo / l_a^2 + 2*J_zRad / l_a^2);

sig2 = r^2 * ( m_Ro / 4 - J_zRo / l_a^2 - 2*J_zRad / l_a^2);

M = [ sig1, sig2, h_SA * m_Ro * r /2;...
      sig2, sig1, h_SA * m_Ro * r /2;...
      h_SA * m_Ro * r /2, h_SA * m_Ro * r /2, m_Ro * h_SA^2 + J_yRo ]

Mi = inv(M)
  
Mout = Mi * p
end

