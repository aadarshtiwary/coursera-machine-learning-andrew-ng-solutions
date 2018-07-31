function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
size(X);
size(theta);
size(y);
hx=X*theta;
b=hx-y;
a=sum(sum(b.*b));
a=a/(2*m);
t=theta;
t(1,1)=0;
reg=sum(sum(t.*t));
reg=lambda*reg/(2*m);
J=a+reg;


t=b.*X;
t=sum(t)/m;
th=theta;
th(1,1)=0;
th=th*lambda/m;

size(t);% 1*2
size(th);% 2*1
grad=t+th';






% =========================================================================
%grad=[theta(1,1);theta(2,1)];
grad = grad(:);


end
