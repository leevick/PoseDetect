function Y = getPoint(I)
%myFun - Description
%
% Syntax: Y = getPoint(I)
%
% Long description
    M = zeros(size(I));
    M(I>0.95)=1;
    L = bwlabel(M);
    Y = zeros(3,2);
    figure;
    imshow(I);
    for i =1:3
     [r,c] = find(L==i);
     b = I(find(L==i));
     r = r'*b./sum(b);
     c = c'*b./sum(b);
     Y(i,1)=r;
     Y(i,2)=c;
     text(c,r,num2str(i));
    end
    Y = Y';
end