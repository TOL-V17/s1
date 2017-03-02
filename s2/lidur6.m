g = (sqrt(5)-1)/2;
%k = log(g, ((0.5.*10^-2)/99));
k = log((0.5.*10^-2)/99)/log(g);
q = ones(7,1)*0.1;
u = vigurfall(q,100);
a = 1;
b = 199;
M = [];
for i = 1 : 7
    f = u(i,1);
    y=gss(f,a,b,k);
    M = [M;y];
end
disp(M);