q = 0.1*ones(7,1);
% v = lidur2(q, 100);
% disp(v)

% f=@(x) cos(x^2) + 3*x - 4;
% [xc,iter] = bisect(f, 1, 2.5, 0.5e-6);


ResultArr = zeros(7,199);

for x=1:199
    disp(x);
    [b,cnt] = lidur3(q,x);
    for i=1:7     
        ResultArr(i,x)= b(i,1);
    end;
end;

save('ResultArr')


