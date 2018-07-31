function p = predict(theta, X) 
a=X*theta;
a=exp(-1*a);
a=1.0*a+1;
a=1./a;
for i=1:length(X),
   if a(i)>=0.5,
     a(i)=1;
   else,
     a(i)=0;
   end;
end;
p=a;