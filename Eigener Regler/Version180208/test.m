format compact
v1 = 40/60*r*2*pi
v2 = 60/60*r*2*pi
% x/v1=x+la/v2

% x*v2/v1 - x =la

r_S = simplify(l_a/(v2/v1-1)+l_a/2)

gamma = atan(((v2-v1)/2+v1)*0.001/r_S)


