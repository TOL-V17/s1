g = (sqrt(5)-1)/2;
k = log((0.5.*10^-2)/99)/log(g);
u = f6(100);
a = 1;
b = 199;
M = [];

y=gss(a,b,k);

disp(y);