% MATLAB Code to Obtain Damped Natural Frequencies and the Mode Shapes
 m = 2000; J = 2500; k1 = 30000; k2=30000; c1= 3000; c2=3000;
 l1=1; l2=1.5;
 a = [m c1+c2 k1+k2];
 b = [J c2*l2^2+c1*l1^2 k2*l2^2+k1*l1^2];
 C = conv(a,b);
 d = [c2*l2-c1*l1 k2*l2-k1*l1];
 e = conv(d,d)
 f= 1.0e+009*[0.005 0.0345 0.4035 1.1700 5.8500] - [0. 0. 2250000 45000000 225000000];
 r = roots(f)