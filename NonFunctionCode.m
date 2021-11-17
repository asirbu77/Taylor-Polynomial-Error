%% Problem 2
% Part b
x=linspace(0.999,1.001,50);
T=lab1bP2(x,3);
plot(x,T,x,(log(x)-x+1)./(x-1).^2)








%% Problem 3
% Part a
x1=linspace(1-10^-7,1+10^-7,50);
T1=lab1bP2(x1,3);
plot(x1,T1,x1,(log(x1)-x1+1)./(x1-1).^2);
% Part b
x2=linspace(1-10^-6,1+10^-6,50);
xlt1=linspace(1-10^-6,1,25);
xgt1=linspace(1,1+10^-6,25);
T2=lab1bP2(x2,3);
Fx=(log(x2)-x2+1)./(x2-1).^2;
AbsError=abs(T2-Fx);
RelError=abs(T2-Fx)./abs(Fx);
semilogy(x2,RelError);
semilogy(x2,AbsError);
trunc = (120/(eps)*abs(xlt1-1).^4);
semilogy(x2,AbsError,x2,RelError,xlt1,trunc,xgt1,((xgt1-1).^4)./6);
%% Problem 4
% Part c
T4 = myfofx(x);
plot(x,T4);
T5 = myfofx(x1);
plot(x1,T5);