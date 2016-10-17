function [a,b] = myrootfind (f,a0,b0)
%function [a,b] = myrootfind (f,a0,b0)
%looks for the subintervals where function changes the sign
%input f --an inline function
%      a0-- left edge of the domain
%      b0-- right edge of the domain
%Output: a -- an array, giving the left edges of subintervals on which f
%             changes the sign.
%        b -- an array, giving the right edges of subintervals on which f
%        changes the sign.
n = 1001; % number of test points to be used
a = []; % start empty array
b= []; 
x =linspace (a0,b0,n);
y =f (x);
%loop through the intervals
for i = 1:(n-1)
    if y(i)*y(i+1)<0 % Achtung, sign changed
        a = [a x(i)];
        b = [b x(i+1)];
    end
end 
if size(a,1) == 0
   
    warning ('no roots were found')
end
