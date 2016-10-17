function x = mynewtoniter (f,f1,x0,tol)
x=x0; %set initial guess to x0 while calling you may set it to 2 or 3
y=f(x);
i=0; %set initial iteration value 
while abs(y)> tol & i <10
    x = x-y/f1(x); %newton's formula
    y=f(x);
    i=i+1; %increment counter
end