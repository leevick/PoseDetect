function [X,Y,Z] = getLoc(H)
%getLoc - Description
%
% Syntax: [X,Y,Z] = getLoc(H)
%
% Long description
% Get the location of O' in camera coordinate system O-XYZ from given perspective transformation matrix H
%H - 3x3 matrix
%X,Y,Z - double
H = inv(H);
Q1 = H*[0,0,1]';
Q2 = H*[1,0,0]';
Xi = -H(3,3)/H(3,1);
D1 = sqrt(1+norm(Q1(1:2),2)^2);
D2 = sqrt(1+norm(Q2(1:2),2)^2);
D = abs(Xi)*D1/D2;
Z = D/D1;
X = Z*Q1(1);
Y = Z*Q1(2);
end