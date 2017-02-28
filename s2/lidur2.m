function out = lidur2(q,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

p0=5.2*10.^5;
d=0.2;
u=0.02;
rho=998;


L1 = 100;
L2 = x;
L3 = 400 - 2*x;
L4 = 75;
L5 = x;
L6 = 75;
L7 = 50;

syms q1 q2 q3 q4 q5 q6 q7;


R1 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q1);
R2 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q2);
R3 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q3);
R4 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q4);
R5 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q5);
R6 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q6);
R7 = diff([q1-q2-q6, q2-q3-q4, q3+q4-q5, q5+q6-q7, L3*q3.^2-L4*q4.^2, L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2, L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0], q7);

J = [R1; R2; R3; R4; R5; R6; R7];
A = subs(J, q1, q(1,1));
B = subs(A, q2, q(2,1));
C = subs(B, q3, q(3,1));
D = subs(C, q4, q(4,1));
E = subs(D, q5, q(5,1));
F = subs(E, q6, q(6,1));
G = subs(F, q7, q(7,1));

out = transpose(G);

end

