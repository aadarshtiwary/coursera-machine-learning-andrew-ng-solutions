function [J, grad] = costFunctionReg(theta, X, y, lambda)

 m=length(y);
 a=X*theta;
 a=1+1.0*exp(-1.0*a);
 hx=1./a;
 b=y.*log(hx);
 c=(ones(m,1)-y).*log(ones(m,1)-hx);
 d=sum(sum(b+c))/(-1.0*m);

 e=lambda/m;
 e=e/2;
 theta(1,:)=0;
 e=e*(theta'*theta);
 J=d+e;

 t=theta;
 %size(t)
 t(1,:)=0;
 p=hx-y;
 p=p.*X;
 q=lambda/m;
 q=q.*t;
 grad=sum(p)/m+q';
 %size(grad);
