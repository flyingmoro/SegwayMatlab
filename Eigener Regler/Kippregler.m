Roboterdaten

-(t1 + t2) = 0.004*t1 + 0.004*t2 + 0.0176*b_pp  + 1.57 b
b = 
s = tf('s')

Gkipp = -201.6 /((s+14.05)*(s-14.05))

Gmotor = 80/(s+80)

Gs1 = Gmotor*Gkipp
k=-2.96
Tv = 1/14.05

Rpd1 = k *(Tv*s + 1)

%k= 3

% Mi =
% 
%   122.5927   44.5154  -75.8863
%    44.5154  122.5927  -75.8863
%   -75.8863  -75.8863  125.6867

Gphip = 318.9/s+ 48061/(s^3-197.35*s)

Tv2 = 1/13.5
k2 = 1

Rpd2 = k2 *(Tv2*s + 1)

Gvor = Gmotor * Gphip * r/2

Gges = Gmotor * Gphip * r/2 * (-Rpd)

Gs2 = Gvor/(1-Gges)


Gs3 = (35844360*s^2-1671828046)/(28100*s^4-2854400*s^3-77234255*s^2-205660160*s+3343656092)
