function g = sigmoid(z)

l=length(z);
if l==1,
 a=z*-1;
 a=1.0*exp(a);
 a=a+1;
 g=1.0*(1/a);
else,
 a=exp(-1*z);
 a=1.0*a+1;
 a=1./a;
 g=a;
end;