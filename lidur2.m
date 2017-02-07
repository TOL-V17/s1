x = pi/4;
fplot(@(x) f(x),[-pi pi],'b')
hold on
fplot(@(y) 0, 'r')
xlabel('theta')
ylabel('f(theta)')

figure()

x = -pi/4;
fplot(@(x) f(x),[-pi pi],'b')
hold on
fplot(@(y) 0, 'r')
xlabel('theta')
ylabel('f(theta)')
