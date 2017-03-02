load('ResultArr.mat', 'ResultArr')

a = transpose(ResultArr(:,1));

for i=2:199
    b = transpose(ResultArr(:,i));
    a = [a;b];
end

bar(a,'stacked');
legend('q1','q2','q3','q4','q5','q6','q7');
xlabel('x(m)');
ylabel('m^3/s');