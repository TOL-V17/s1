format long;
L1=3;
L2=3*sqrt(2);
L3=3;
gamma=(pi/4);
p1=5;
p2=4;
p3=3;
x1 = 5;
x2 = 0;
y2 = 6;
fn=@(theta) ((y2 - L2*sin(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2) + L3*sin(theta)*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2))^2 - p1^2*(2*(y2 - L2*sin(gamma + theta))*(x1 - L3*cos(theta)) + 2*L3*sin(theta)*(x2 - L2*cos(gamma + theta)))^2 + ((x1 - L3*cos(theta))*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2) - (x2 - L2*cos(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2))^2;


figure
%stada1
sol = bisect(fn,-pi,1.5,0.5e-6);
disp(sol);
subplot(1,2,1);
plot_poses(x1,x2,y2,p1,p2,p3,L2,L3,sol,gamma)

%stada2
sol2 = bisect(fn,1.5,pi,0.5e-6);
disp(sol2);
subplot(1,2,2);
plot_poses(x1,x2,y2,p1,p2,p3,L2,L3,sol2,gamma)

figure()

fplot(@(x) fn(x),[-pi pi],'b')
hold on

fplot(@(y) 0, 'r')

xlabel('theta')
ylabel('f(theta)')