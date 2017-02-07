format long;

val1 = 1;

start_interval = 0;
temp = 0;
poses = 0;

for p2 = 0:0.001:11
    cnt = 0;
    for v = -pi:0.1:pi
        theta = v;
        val = f7(v,p2);
        if val1*val < 0
            cnt = cnt +1; 
        end
        val1 = val;  
    end
 
    if poses ~= cnt
       fprintf('The interval %.3f to %.3f has %d poses\n',start_interval,temp,poses);
       start_interval = p2;
       poses=cnt;
    end
    
    if p2 == 11
        fprintf('The interval %.3f to %.3f has %d poses\n',start_interval,temp,cnt);
    end
    
    temp = p2;
 
    %fn=@(theta) ((y2 - L2*sin(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2) + L3*sin(theta)*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2))^2 - p1^2*(2*(y2 - L2*sin(gamma + theta))*(x1 - L3*cos(theta)) + 2*L3*sin(theta)*(x2 - L2*cos(gamma + theta)))^2 + ((x1 - L3*cos(theta))*((x2 - L2*cos(gamma + theta))^2 + (y2 - L2*sin(gamma + theta))^2 + p1^2 - p3^2) - (x2 - L2*cos(gamma + theta))*(L3^2*sin(theta)^2 + (x1 - L3*cos(theta))^2 + p1^2 - p2^2))^2;
end
