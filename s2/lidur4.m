q = 0.1*ones(7,1);

[b,cnt] = lidur3(q,100);

BE = abs(vigurfall(q,100));
FE = abs(b-q);

disp('BE');
disp(BE);
disp('FE');
disp(FE);