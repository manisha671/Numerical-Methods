%mygraphs
%plots the graphs of x, x^2, x^3, x^4
%on the interval [1,-1]

%fix the domain and evaluation points
x= -1:.1:1;

%calucate powers
%x1 is just x

x2 = x.^2;
x3 = x.^3;
x4 = x.^4;

%plot each of the graphs
plot (x,x,'black', x,x2,'blue',x,x3,'red',x,x4,'green')
