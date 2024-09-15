% Input Data
m = 2000; J = 2500; k1 = 30000; k2=30000; c1= 3000; c2=3000;
l1=1; l2=1.5;
% Establishing the Polynomials
% Enter a values
a = [m c1+c2 k1+k2];
% Enter b values
b = [J c2*l2^2+c1*l1^2 k2*l2^2+k1*l1^2];
C = conv(a,b);
d = [c2*l2-c1*l1 k2*l2-k1*l1];
e = conv(d,d);
e = [0 0 e];
% Finding Characteristic Polynomial's Coefficient
f = C-e
g= [c1 k1];
h=conv(b,C);
i=[c1*l1 k1*l1];
p=[c2*l2-c1*l1 k2*l2-k1*l1];
q=conv(b,g)+[0 conv(i,p)];
% Transfer Function for Bounce Motion Due to Y1 Input
sys = tf(q,f)
o= conv(-a,i);
x= conv(g,p);
y=o-[0 x];
% Transfer Function for Pitch Motion Due to Y1 Input
sys1 = tf (y,f)
gg=[c2 k2];
ii=[c2*l2 k2*l2];
qq=conv(b,gg)- [0 conv(ii,p)];
% Transfer Function for Bounce Motion Due to Y2 Input
sys2 = tf(qq,f)
oo=conv(a,ii);
yy=oo-[0 conv(gg,p)];
% Transfer Function for Pitch Motion Due to Y2 Input
sys21 = tf(yy,f)
 