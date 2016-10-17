function x = mynewton(f,f1,x0,n)

%format long
format compact
x =x0;
for i = 1:n
    x= x- f(x)/f1(x);

end 
% give values of f, f1, x0, n to run this program
% eg., f = inline('x^2') and f1 = inline ('2*x') and mynewton(f,f1, 0.1,10)
% see what happens when you put different values for x0