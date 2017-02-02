format long;
L1=3;
L2=3*sqrt(2);
L3=3;
gamma=(pi/4);
p1=5;
p2=7;
p3=3;
x1 = 5;
x2 = 0;
y2 = 6;
fn=@(theta) ((y2 - L2*sin(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2) + L3*sin(theta)*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2))^2 - p1^2*(2*(y2 - L2*sin(gamma + theta))*(x1 - L3*cos(theta)) + 2*L3*sin(theta)*(x2 - L2*cos(gamma + theta)))^2 + ((x1 - L3*cos(theta))*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2) - (x2 - L2*cos(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2))^2;

%stada1
sol = bisect(fn,-pi,-0.5,0.5e-6);
disp(sol);
%stada2
sol2 = bisect(fn,-0.5,0,0.5e-6);
disp(sol2);
%stada3
sol3 = bisect(fn,0,0.4,0.5e-6);
disp(sol3);
%stada4
sol4 = bisect(fn,0.4,0.5,0.5e-6);
disp(sol4);
%stada5
sol5 = bisect(fn,0.5,2,0.5e-6);
disp(sol5);
%stada6
sol6 = bisect(fn,2,pi,0.5e-6);
disp(sol6);

fplot(@(x) fn(x),[-pi pi],'b')
hold on

fplot(@(y) 0, 'r')

xlabel('theta')
ylabel('f(theta)')