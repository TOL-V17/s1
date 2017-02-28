function out = lidur3(q,x)

A = lidur2(q,x);
disp(A)
b = -(vigurfall(q,x));
disp(b)
s = vpa(A\b);
tol = 0.5*10^-6;
counter = 1;
while(1)
    y = s+q;
    A = lidur2(y,x);
    b = -(vigurfall(y,x));
    s = vpa(A\b);
    if (2/3).^counter > tol
        break
    end
    counter = counter+1;
end
out = s+y;
end