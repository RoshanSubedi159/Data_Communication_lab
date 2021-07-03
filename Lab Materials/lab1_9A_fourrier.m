f = 1;
a = 5;
dc_bias = -3;
t = -3:0.01:3;

g = 5*square(2*pi*f*t) + dc_bias;
figure(1);
plot(t,g);
axis([-5 5 -10 10])
ylabel("x(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on

T = 1/f;
Tint = 0:0.01:T;
y1=@(time) (a*square(2*pi*f*time)+dcBias);
a0 = 2/T*integral(y1,0,T);
sum=0;
m=15;
for k=1:m
    f1 = @(time) (a*square(2*pi*f*time)+dcBias).*cos(k*2*pi*f*time);
    f2 = @(time) (a*square(2*pi*f*time)+dcBias).*sin(k*2*pi*f*time);
    am=2/T*integral(f1,0,T);
    bm=2/T*integral(f2,0,T);
    sum=sum+am.*cos(k*2*pi*f.*t)+bm.*sin(k*2*pi*f.*t);
end
s_t=a0/2+sum;
figure(2);
plot(t,s_t);
axis([-5 5 -10 10])
ylabel("x(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on