
f = 5;
A = 19;
t = 0:0.01:3;
g = @(time) (A.*cos(2*pi*f*time));
figure(1);
plot(t,g(t));
axis([0 3 -25 25]);
ylabel("g(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on

y = fft(g(t));
figure(2);
plot(t,y);
ylabel("g(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on

z = ifft(y);
figure(3);
plot(t,z);
axis([0 3 -25 25]);
ylabel("g(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on