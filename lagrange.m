clc
clear
Xo=input('Valor que desea interpolar');
n=input('Número de puntos que va a ingresar');
for i=1:n
    disp('');
    disp('Ingrese el punto');
    disp(i);
    X(i)=input('Ingrese el valor de X');
    Y(i)=input('Ingrese el valor de Y');
end
%plot(X,Y,'r+')
for i=1:n
    Ya(i)=Y(i)
    for j=1:n
    if j~=i
        Ya(i)=(Ya(i)*(Xo-X(j)))/(X(i)-X(j));
    end
    end 
end
Yo=sum(Ya)
plot(X,Y,'r+',Xo,Yo,'p-')
legend('Valores iniciales','Valor interpolado')
title('Interpolaciones de lagrange','FontName','Brush Script MT','FontSize',19)
ylabel('Valores de Y','FontName','Lucida Handwriting')
xlabel('Valores de X','FontName','Lucida Handwriting')