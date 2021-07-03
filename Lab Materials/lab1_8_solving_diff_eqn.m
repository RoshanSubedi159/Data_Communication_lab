eqn =@(t,y) - 4*y + 2*cos(2*t);
tspan=0:0.01:15;
[t,y]=ode23(eqn,tspan,2);
plot(t,y)
title('Solution of Differential Equation','075BCT068');
xlabel('t');
ylabel('y');