%Calculate geometric series until it seems to converge
format long
format compact
r = .5;
Snew = 0;
Sold = -1;
i=0;
while Snew >Sold
    Sold = Snew;
    disp(Snew);
    Snew = Snew + r^i;
    disp(Snew);
    i=i+1;
end
Exactvalue = 2;
err = Snew -Exactvalue; 
disp(err);