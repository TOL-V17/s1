q = 0.1*ones(7,1);
[b,cnt] = lidur3(q,100);
fprintf('Itrekanir: %d \n',cnt);

for i=1:7
    b(i,1) = vpa(round(b(i,1)*10^6)/10^6);
end
disp(b)