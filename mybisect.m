function [x, e]= mybisect (f,a,b,n)
%does n iterations
%input: f -inline function
%       a,b left and right edges of interval
%       n - number of bisection to perform
format long
c=f(a); d=f(b);
if c*d >0.0
    error('FUNCTION HAS SAME SIGN AT BOTH ENDS')
end
disp ('            x             y          ' )
for i =1:n
    %find the middle and evaluate there
    x =(a+b)/2;
    y=f(x);
    disp ([x  y])
    if y==0.0 % equation is solved exactly
        e=0;
        break %jumps out of the loop
    end
    %decide which half to keep, so that the signs at the ends differ
    if c*y <0
        b=x;
    else
        a=x;
    end
end
%set the best estimate for x and the error 
x =(a+b)/2;
e = (b-a)/2;
