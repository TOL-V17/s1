function out=f(theta)

%gamma
gamma = pi/2;

%Length of L
L_1 = 2;
L_3 = sqrt(2);
L_2 = L_3;

%X and Y coordinates
x2 = 0;
y2 = 4;
x1 = 4;

% Lenght of P (strut?)

p1 = sqrt(5);
p2 = sqrt(5);
p3 = sqrt(5);

% In between calc

A2 = L_3 * cos(theta) - x1;
B2 = L_3 * sin(theta);
    L2=sqrt(2);
A3 = L_2 * (cos(theta) * cos(gamma) - sin(theta) * sin(gamma)) - x2;
B3 = L_2 * (sin(theta) * sin(gamma) - sin(theta) * cos(gamma)) - y2;

N = (B3 * (p2^2 - p1^2 - A2^2 -B2^2)) - (B2 * (p3^2 - p1^2 - A3^2 - B3^2));
N2 = (-A3 * (p2^2 - p1^2 - A2^2 -B2^2)) + (A2 * (p3^2 - p1^2 - A3^2 - B3^2));

D = 2 * (A2 * B3 - B2 * A3);


out=N^2+N2^2-p1^2*D^2;