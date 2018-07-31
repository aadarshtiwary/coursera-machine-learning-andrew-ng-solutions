function J = computeCost(X, y, theta) 

m=length(y)*2;
a=X*theta;
b=a-y;
b=b.^2;
c=sum(sum(b));
J=c/m;