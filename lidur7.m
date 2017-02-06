format long;

val1 = 1;

first_iter = true;
start_interval = 0;
temp = 0;
poses = 0;

for p2 = 0:0.001:11
    cnt = 0;
    for v = -pi:0.1:pi
        %disp(p2);
        %disp(v);
        theta = v;
        val = f2(v,p2);
        if val1*val < 0
            cnt = cnt +1; 
            %disp(p2);
        end
        val1 = val;  
    end
 
    if poses ~= cnt
       fprintf('The interval %f to %f has %d poses\n',start_interval,temp,poses);
%        disp(curr);
%        disp(temp);
%        disp(p2);
       start_interval = p2;
       poses=cnt;
    end
    
    temp = p2;
 
    %fn=@(theta) ((y2 - L2*sin(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2) + L3*sin(theta)*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2))^2 - p1^2*(2*(y2 - L2*sin(gamma + theta))*(x1 - L3*cos(theta)) + 2*L3*sin(theta)*(x2 - L2*cos(gamma + theta)))^2 + ((x1 - L3*cos(theta))*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2) - (x2 - L2*cos(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2))^2;
end

%stada1
%sol = bisect(fn,-pi,1.5,0.5e-6);
%disp(sol);
%stada2
%sol2 = bisect(fn,1.5,pi,0.5e-6);
%disp(sol2);
%stada3
%sol3 = bisect(fn,0,0.4,0.5e-6);
%disp(sol3);
%stada4
%sol4 = bisect(fn,0.4,0.5,0.5e-6);
%disp(sol4);
%stada5
%sol5 = bisect(fn,0.5,2,0.5e-6);
%disp(sol5);
%stada6
%sol6 = bisect(fn,2,pi,0.5e-6);
%disp(sol6);

%fplot(@(x) fn(x),[-pi pi],'b')
%hold on

%fplot(@(y) 0, 'r')
%ylabel('f(theta)')