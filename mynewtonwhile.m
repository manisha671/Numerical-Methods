%easiest and awesome way to write Newton's program while checking the
%tolerance.

function x = mynewtonwhile (f,f1,x0,tol)
x=x0; %set initial guess to x0 while calling you may set it to 2 or 3
y=f(x);
while abs(y)> tol
    x = x-y/f1(x);
    y=f(x);
end

% Problem, abs(y) might never get smaller than tol.
% to avoid infinte loop, maximum number of iteration i can be set
%see file mynewtoniter
