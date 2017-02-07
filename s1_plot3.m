function out=s1_plot3(theta)
    L1=2;
    L2=sqrt(2);
    L3=sqrt(2);
    gamma=(pi/2);
    p1=sqrt(5);
    p2=sqrt(5);
    p3=sqrt(5);
    x1 = 4;
    x2 = 0;
    y2 = 4;
        
    A2 = L3*cos(theta)-x1;
    B2 = L3*sin(theta);
    A3 = L2*cos(theta + gamma)-x2;
    B3 = L2*sin(theta + gamma)-y2;
    
    N1 = B3.*(p2^2-p1^2-A2.^2-B2.^2) - B2.*(p3^2-p1^2-A3.^2-B3.^2);
    N2 = -A3.*(p2^2-p1^2-A2.^2-B2.^2) + A2.*(p3^2-p1^2-A3.^2-B3.^2);
    D = 2*(A2.*B3 - B2.*A3);
    
    
out=N1^2+N2^2-p1^2*D^2;

x = N1/D;
y = N2/D;

u1 = x + L2*(cos(theta + gamma));
v1 = y + L2*(sin(theta + gamma));
u2 = x + L3*cos(theta);
v2 = y + L3*sin(theta);
u3 = x;
v3 = y;

plot([u1 u2 u3 u1], [v1 v2 v3 v1], 'r');
hold on

plot([0 x1 x2], [0 0 y2], 'bo');
hold on

plot([x1 u2], [0 v2], 'b');
hold on

plot([0 u3], [0 v3], 'b');
hold on

plot([x2 u1], [y2 v1], 'b');
hold on

xlabel('theta')
ylabel('f(theta')

end
