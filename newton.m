function x = newton(f,f1,x0,n)

format long
format compact
x =x0;
for i = 1:n
    x= x- f(x)/f1(x)
end 
