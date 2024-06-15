function [t,y] = ODE45 (f,a,b,n,y0) 
    h = (b-a)/n;
    tsp = a:(b-a)/n:b;
    y(1) = y0;
    [t,y] = ode45(f,tsp,y0); 
end
