q = 0.1*ones(7,1);

ResultArr = zeros(7,199);
disp('Er ad reikna daemi 5.. vinsamlega bidid')
for x=1:199
%   disp(x);
    [b,cnt] = lidur3(q,x);
    for i=1:7     
        ResultArr(i,x)= b(i,1);
    end;
end;

% Store the matrix. Already done before.
% save('ResultArr')
% disp('Nidurstodur vistadar')

