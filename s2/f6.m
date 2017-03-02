function out=f6(x)

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
syms q1 q2 q3 q4 q5 q6 q7;
out = [];
out = [out; q1 - q2 - q6];
out = [out;q2 - q3 - q4];
out = [out;q3 + q4 - q5];
out = [out;q5 + q6 - q7];
out = [out;L3*q3^2 - L4*q4^2];
out = [out;L2*q2^2 + L4*q4^2 + L5*q5^2 - L6*q6^2];
out = [out;L1*q1^2 + L6*q6^2 + L7*q7^2 - fu];

end