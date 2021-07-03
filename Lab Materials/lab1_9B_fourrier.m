L = 5;
time = -L:0.01:L;

g =@(time) (-time.^4 + 17*time.^3 - time.^2 -47) ;

plot(time,g(time));
ylabel("g(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on

a0 = 1/L * integral(g,-L,L);
sum=0;
m=20;
for k=1:m
    f1 = @(time) (-time.^4 + 17*time.^3 - time.^2 -47).*cos(k*pi*time/L);
    f2 = @(time) (-time.^4 + 17*time.^3 - time.^2 -47).*sin(k*pi*time/L);
    am=1/L*integral(f1,-L,L);
    bm=1/L*integral(f2,-L,L);
    sum=sum+am.*cos(k*pi.*t./L)+bm.*sin(k*pi.*t./L);
end
s_t=a0/2+sum;
figure(2);
plot(t,s_t);
ylabel("x(t)")
xlabel("t")
title("075BCT068","Roshan Subedi")
set(gca, 'XAxisLocation', 'origin')
set(gca, 'YAxisLocation', 'origin')
grid on