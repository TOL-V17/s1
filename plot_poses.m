function plot_poses(x1,x2,y2,p1,p2,p3,L2,L3,theta,gamma)
   
    A2 = L3*cos(theta)-x1;
    B2 = L3*sin(theta);
    A3 = L2*cos(theta + gamma)-x2;
    B3 = L2*sin(theta + gamma)-y2;    
    A3 = L2*[cos(theta)*cos(gamma) - sin(theta)*sin(gamma)]-x2;
    B3 = L2*[cos(theta)*sin(gamma) + sin(theta)*cos(gamma)]-y2;
    D = 2*(A2*B3 -B2*A3);
    N1 = B3*(p2.^2-p1.^2-A2.^2-B2.^2)-B2*(p3.^2-p1.^2-A3.^2-B3.^2);
    N2 = -A3*(p2.^2-p1.^2-A2.^2-B2.^2) + A2*(p3.^2-p1.^2-A3.^2-B3.^2);

    x = N1/D;
    y = N2/D;
    
    u1 = x;
    v1 = y;
    
    u2 = x + L2*cos(theta + gamma);
    v2 = y + L2*sin(theta + gamma);
   
    u3 = x + L3*cos(theta);
    v3 = y + L3*sin(theta);
    
    plot([u1 u2 u3 u1],[v1 v2 v3 v1],'r'); hold on;
    plot([x1,u3],[0, v3],'b'); hold on; 
    plot([0,x],[0,y],'b'); hold on; 
    plot([x2, u2],[y2, v2],'b'); hold on;
    plot([0 x1 x2],[0 0 y2],'bo')
    
    the_title = ['Pose for theta = ' num2str(theta) '.'];
    xlabel('x');
    ylabel('y');
    title(the_title);
    grid on;
   