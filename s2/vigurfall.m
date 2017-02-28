function out=vigurfall(q,x)

L1 = 100;
L2 = x;
L3 = 400 - 2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;


p_delta = 520000;
rho = 998;
f = 0.02;
d = 0.2;

fu = ((pi^2 * d^5)/(8*f*rho))*p_delta;

out = zeros(7,1);
out(1,1) = q(1,1) - q(2,1) - q(6,1);
out(2,1) = q(2,1) - q(3,1) - q(4,1);
out(3,1) = q(3,1) + q(4,1) - q(5,1);
out(4,1) = q(5,1) + q(6,1) - q(7,1);
out(5,1) = L3*q(3,1)^2 - L4*q(4,1)^2;
out(6,1) = L2*q(2,1)^2 + L4*q(4,1)^2 + L5*q(5,1)^2 - L6*q(6,1)^2;
out(7,1) = L1*q(1,1)^2 + L6*q(6,1)^2 + L7*q(7,1)^2 - fu;

end