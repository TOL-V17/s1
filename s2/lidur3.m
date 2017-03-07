function [out,counter] = lidur3(q,x)
A = lidur2(q,x);
%disp(A)
b = -(vigurfall(q,x));
%disp(b)
s = vpa(A\b);
tol = 0.5*10^-6;
counter = 1;
error=1;
while(error > tol)
    qold = q;
    q = s+q;
    A = lidur2(q,x);
    b = -(vigurfall(q,x));
    s = vpa(A\b);
    counter = counter+1;
    error = norm(q-qold)/norm(q);
end
out = s+q;

end