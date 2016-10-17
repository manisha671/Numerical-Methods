function y = myfun(x)
%computes the function (x^2*exp(-x^2))
% input = x -- a number or vector
% for a vector the computation is elementwise
%output = y-- a number or a vector same as a size of x
y = (x.^2 .* exp(-x.^2));

