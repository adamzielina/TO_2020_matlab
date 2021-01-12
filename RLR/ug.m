function x=ug(t,p1,p2,p3,wariant);
switch wariant,
case 1, x=p1*cos(2*pi*p2*t+p3);
case 2, x=p1*cos(2*pi*p2*t+p3); if x>0, x=1; else x=0; end;
end;
