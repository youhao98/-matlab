function dydx=mat4ode(x,y,lambda)
q=5;
dydx=[y(2)
	-(lambda-2*q*cos(2*x))*y(1)];
