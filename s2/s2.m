q = 0.1*ones(7,1);
% v = lidur2(q, 100);
% disp(v)

[b,cnt] = lidur3(q,100);
fprintf('Itrekanir: %d \n',cnt);
fprintf('%.6f\n', b);

