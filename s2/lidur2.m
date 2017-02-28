function out = Jac(q,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

p0=5.2*10.^5;
d=0.2;
u=0.02;
rho=998;

f1=q1-q2-q6;
f2=q2-q3-q4;
f3=q3+q4-q5;
f4=q5+q6-q7;
f5=L3*q3.^2-L4*q4.^2;
f6=L2*q2.^2+L4*q4.^2+L5*q5.^2-L6*q6.^2;
f7=L1*q1.^2+L6*q6.^2+L7*q7.^2-((pi.^2*d.^5)/8*u*rho)*p0;

%J = [f1; f2; f3; f4; f5; f6; f7];


R1 = diff([f1, f2, f3, f4, f5, f6, f7], q1);
R2 = diff([f1, f2, f3, f4, f5, f6, f7], q2);
R3 = diff([f1, f2, f3, f4, f5, f6, f7], q3);
R4 = diff([f1, f2, f3, f4, f5, f6, f7], q4);
R5 = diff([f1, f2, f3, f4, f5, f6, f7], q5);
R6 = diff([f1, f2, f3, f4, f5, f6, f7], q6);
R7 = diff([f1, f2, f3, f4, f5, f6, f7], q7);

out = [transpose(R1), transpose(R2), transpose(R3), transpose(R4), transpose(R5), transpose(R6), transpose(R7)];

end

