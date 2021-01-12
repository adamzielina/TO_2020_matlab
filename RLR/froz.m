function du2=froz(t,u2, R1,R2,L,p1,p2,p3,wariant);
du2=ug(t,p1,p2,p3,wariant)*R2/L - u2*(R1+R2)/L;
