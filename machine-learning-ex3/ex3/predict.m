function p = predict(Theta1, Theta2, X)

m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);
X=[ones(size(X,1),1),X];

a=X*Theta1';
a=-1*a;
a=exp(a);
a=1+a;
a=1./a;
a=[ones(size(a,1),1),a];
a=a*Theta2';
a=-1*a;
a=exp(a);
a=1./a;
size(a)
for i=1:size(a,1),
   max=a(i,1);
   p(i,1)=1;
   for j=1:size(a,2),
     if a(i,j)>max,
	   max=a(i,j);
	   p(i,1)=j;
	 end;
   end;
end;	 
 
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
% =========================================================================
end