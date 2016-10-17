bouncedheight = 0;
currentheight= 2;

for i= 1:n
    bouncedheight = bouncedheight + (currentheight*9);
    currentheight = currentheight*9;
end
disp(bouncedheight);
