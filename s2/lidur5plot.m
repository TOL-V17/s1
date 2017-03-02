load('ResultArr.mat', 'ResultArr')


a = transpose(ResultArr(:,1));
b = transpose(ResultArr(:,2));
c = [a;b] 


a = transpose(ResultArr(:,1));

for i=2:199
    b = transpose(ResultArr(:,i));
    a = [a;b];
end
h = ['q1', 'q2', 'q3', 'q4','q5','q6', 'q7']
disp(h);

legend(h,1);
bar(a,'stacked');