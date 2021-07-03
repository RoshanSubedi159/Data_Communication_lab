f = [1,4,-2,(4-2i)];
g = [-3,(5+7i),6,2];

r1 = f+g;
disp(r1);
r2 = f.*g;
disp(sum(r2));
disp(mean(f));
k = f.^2;
disp(mean(k));