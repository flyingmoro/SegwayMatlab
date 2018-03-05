s = tf('s')
G_S = -0.996/(s^2 - 0.0276)
G_Motor = 80/12.09/(s+80)
G = G_S * G_Motor
k=-2.96
Tv = 1/14.05

Rpd1 = k *(Tv*s + 1)