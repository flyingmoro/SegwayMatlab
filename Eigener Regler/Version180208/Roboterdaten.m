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