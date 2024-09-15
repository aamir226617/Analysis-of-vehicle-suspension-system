% Calculating Eigenvalues and Eigenvectors
m = 2000; J = 2500 ; k1 = 30000; k2=30000;
l1=1; l2=1.5;
%Establishing Mass Matrix
m=[m 0; 0 J];
%Establishing stiffness matrix
k= [k1+k2 k2*l2-k1*l1; k2*l2-k1*l1 k2*l2^2+k1*l1^2];
% Calling Function "eig" to Obtain Natural Frequencies and Mode Shapes
[u,lamda]=eig(k, m);
fprintf('\n')
disp('Natural Frequencies are:')
% Print Natural Frequencies
w = sqrt(lamda)
fprintf('\n')
% Print the Mode Shape
disp('Mode shapes are:')
fprintf('\n')
%Display mode shape
disp('u=')
fprintf('\n')
disp(u)