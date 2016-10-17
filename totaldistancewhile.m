function d = totaldistancewhile(H)
b = H; % to trick while loop
e=0.9;
sum =0;
i=0;

while b>0.01
    b = H*(e^i);
    sum =sum +(e^i);
    d = H + H*sum;
    i=i+1;
end