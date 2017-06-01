function [H,alpha,beta,gamma] = getPose(X,Y)
%poseDetect - Description
%
% Syntax: [alpha,beta,gamma] = getPose(X,Y)
%
% Long description
% Get pose parameter alpha,beta,gamma from given input X,Y
% X - 2x3 matrix with each colomn denoting a planar coordinate
% Y - 2x3 matrix with each colomn denoting a planar coordinate

    X = [X;1 1 1];
    Y = [Y;1 1 1];
    H = Y*inv(X);
    alpha = atan(-H(3,1)/H(3,3));
    beta = atan(-H(3,2)/H(3,3));
    HH = inv(H)';
    gamma = atan(-HH(2,1)/HH(1,1));
end