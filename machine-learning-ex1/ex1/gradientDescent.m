function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)   
m=length(y);
J_history=zeros(m,1);

while num_iters,
 a=X*theta;
 a=a-y;
 b=a.*X(:,1);
 c=a.*X(:,2);
 sum_b=sum(b);
 sum_c=sum(c);
 theta(1,1)=theta(1,1)-(alpha*sum_b/m);
 theta(2,1)=theta(2,1)-(alpha*sum_c/m);
 disp(theta);
 J_history=computeCost(X, y, theta);
 num_iters= num_iters-1;
end;
