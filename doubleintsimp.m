function di=doubleintsimp(f,a,b,c,d,m,n)
h1=(b-a)/2;
h2=(b+a)/2;
J=0
for i = 1:m
    JX = 0;
    x = h1*
% h=(b-a)/n;
% J1=0;
% J2=0;
% J3=0;
% for i=0:n
%     x=a+i*h;
%     HX=(feval(d,x)-feval(c,x))/m;
%     K1=(feval(f,x,feval(c,x))+feval(f,x,feval(d,x)));
%     K2=0;
%     K3=0;
%     for j=1:m-2
%         y=feval(c,x)+j*HX;
%         Q=feval(f,x,y);
%         if rem(j,2)==0
%             K2=K2+Q;
%         else
%             K3=K3+Q;
%         end
%     end
%     L=(K1+2*K2+4*K3)*HX/3;
%     if i==0 || i ==n
%         J1=J1+L;
%     elseif rem(i,2)==0
%         J2=J2+L;
%     else
%         J3=J3+L;
%     end
% end
% J=h*(J1+2*J2+4*J3)/3;
% di=J;