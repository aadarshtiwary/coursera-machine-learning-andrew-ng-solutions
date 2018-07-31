function [J, grad] = costFunction(theta, X, y) 

 m=length(y);
 a=X*theta;
 a=1+1.0*exp(-1.0*a);
 hx=1./a;
 b=y.*log(hx);
 c=(ones(m,1)-y).*log(ones(m,1)-hx);
 J=sum(sum(b+c))/(-1.0*m);

 p=hx-y;
 y=p.*X;
 grad=sum(y)/(m*1.0);