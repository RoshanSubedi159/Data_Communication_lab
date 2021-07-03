k = -10:10;
x = -.92*sin(0.1*pi*k-3*pi/4);
figure(1);
stem(k,x)
xlabel("x")
ylabel("k")
title("075BCT068","Roshan Subedi")

k = 0:50;
x = ((-0.93).^k.*exp(pi*k*1i/sqrt(350)));
figure(2);
stem(k,x)
xlabel("x")
ylabel("k")
title("075BCT068","Roshan Subedi")
