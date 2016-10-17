%Suppose a ball is dropped from a height of 2 meters onto a hard surface and the coefficient of restitution
%of the collision is .9 (see Wikipedia for an explanation). Write a well-commented script program to
%calculate the total distance the ball has traveled when it hits the surface for the n-th time. Enter:
%format long. By trial and error approximate how large n must be so that total distance stops
%changing. Turn in the program and a brief summary of the results.

function distance = totaldistance(H,n,e)
%bounceheight = 0;
sum = 0;
for i=1:n
    %bounceheight = H*(e^i);
    sum =sum +(e^i);
    distance = H + H*sum;
end


    
