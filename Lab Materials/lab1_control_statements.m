x = [2 5;4 6];
y = [1 5;6 -2];
z = zeros(2,2);

for m = 1:2
    for n = 1:2
        z(m,n) = x(m,n)+y(m,n);
    end
end
disp(z)

m = 1;
n = 1;
while m <3
    while n<3
        z(m,n)=x(m,n)+y(m,n);
        n = n+1;
    end
    m = m+1;
end
disp(z);

z = x+y;
disp(z)

a = 5;
if (a>0)
    x = 5;
else
    x = 100;
end
disp(x);