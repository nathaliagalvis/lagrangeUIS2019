clc
clear
Xp=3;
X=[7 6 2 9 2.5];
Y=[10 1.1 2.3 4 4.9];
Xa=abs(Xp-X);
p=min(find(Xa==min(Xa)));
if p==1 
    A=[X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1;X(p+2)^2 X(p+2) 1];
    B=[Y(p); y(p+1);Y(P+2)];
else
    if p~=length(X)
        A=[X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1];
        B=[Y(p-1);Y(p);Y(p+1)];
    else
        A=[X(p-2)^2 X(p-2) 1;X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1];
        B=[Y(p-2);Y(p-1);Y(p)];
    end
end
C=linsolve(A,B);
Yp=(C(1)*Xp^2)+(C(2)*Xp)+C(3);