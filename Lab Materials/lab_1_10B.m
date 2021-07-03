f = 5;
A = 19;
t = 0:0.01:3;
g =@(time) (A * square(2*pi*f*time));
figure(1);
plot(t,g(t));
axis([0 4 -20 20]);
ylabel("Amplitude(A)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on

%fft implementation
y = fft(g(t));
figure(2);
plot(t,y);
ylabel("Amplitude(A)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on

%IFFT implementation
z = ifft(y);
figure(3);
plot(t,z);
ylabel("Amplitude(A)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on