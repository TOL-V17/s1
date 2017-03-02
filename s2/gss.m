% Program 13.1 Golden Section Search for minimum of f(x)
% Start with unimodal f(x) and minimum in [a,b]
% Input: function f, interval [a,b], number of steps k
% Output: approximate minimum y
function y=gss(a,b,k)
g=(sqrt(5)-1)/2;
x1 = ones(7,1).*( a+(1-g)*(b-a));
x2 = ones(7,1).*(a+g*(b-a));
%...
f1=vigurfall(x1, 100);
f2=vigurfall(x2,100);
for i=1:k
    if f1(3,1) < f2(3,1) % if f(x1) < f(x2), replace b with x2
        b=x2(3,1); 
        x2=x1; 
        x1=ones(7,1)*(a+(1-g)*(b-a));
        f2=f1; 
        f1=vigurfall(x1,100); % single function evaluation
    else % otherwise, replace a with x1
        a=x1(3,1); 
        x1=x2; 
        x2=ones(7,1)*(a+g*(b-a));
        f1=f2; 
        f2=vigurfall(x2,100); % single function evaluation
    end
end
y=(a+b)/2;