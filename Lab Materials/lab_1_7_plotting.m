t = -5:0.01:5;
x = 5*sin(2*pi*t).*cos(pi*t-8);
figure(1);
plot(t,x)
xlabel("x")
ylabel("t")
title("075BCT068","Roshan Subedi")

t = -10:0.01:10;
x = 5*exp(-0.2*t).*sin(2*pi*t);
figure(2);
plot(t,x)
xlabel("x")
ylabel("t")
title("075BCT068","Roshan Subedi")