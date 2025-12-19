function Xdot = StateFunction(X,U)
m=1350; %kg
J=1350; %kgm^2
cf=55000; %N/rad
cm=100000; %N/rad
cr=120000; %N/rad
lf=2.5; %m
lm=0.5; %m
lr=3; %m
vx=20; %m/s
a1 = (-2*lf*cf - 2*lm*cm + 2*lr*cr)/(J*vx);
a2 = 2*((lf^2)*cf + (lm^2)*cm - (lr^2)*cr)/(J*vx);
a3 = 2*lf*cf/J;
a4 = 2*lm*cm/J;
a5 = -2*lr*cr/J;

b1 = 2*(-cf - cr - cm)/(m*vx);
b2 = 2*(lf*cf + lm*cm + lr*cr)/(m*vx)-vx;
b3 = 2*cf/m;
b4 = 2*cm/m;
b5 = 2*cr/m;


A = [b1 , b2 ; a1 , a2];
B = [b3 , b4 , b5 ; a3 , a4 , a5];
Xdot = A*X + B*U;
end


