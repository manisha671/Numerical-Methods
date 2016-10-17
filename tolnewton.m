%calcuation of error and tolerance, i.e., how close the value is to the
%true value. 
%impossible to know because we dont know the true value
%so we see how close the equation is being satisfied
% |rn| = |f(xn)| rn is the residual

function x = tolnewton(f,f1,x0,n, tol)
%solves f(x) =0 by doing n steps of Newton's method starting at x0
%Inputs: f -- function, input as an inline
%f1 -- derivation of f , input as an inline
%x0 -- starting point, a guess
%tol = desired tolerance, prints a warning if |f(x)|>tol
%output:  x -- the approximate solution

x=x0; %set x to the intial guess x0
for i= 1:n % do it  n number of times
    x = x - f(x)/f1(x);
end

r = abs(f(x));
disp(r)
if r> tol
    warning('the desired accuracy was not attained')
end 
