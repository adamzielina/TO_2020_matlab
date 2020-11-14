a=1:10;
score=0;
for c=(1:length(a))
    if a(c)%2=0
    score= score + a(c);
    end
end
fprintf('a) wynik sumy el parzystych od %d do %d to %d\n' ,a(1),a(end),score);

clear

a=(-10:2:10);
sum=0;
b=[];

for c=(1:length(a))
    if a(c)~=0
        b(c)=a(c);
    end
    if c>1
        if b(c-1)==0
           b(c-1)=[];
        end
    end
end

if b(end)==0
    b(end)=[];
end

for x=(1:length(b))
    sum=sum+b(x);
end
average=sum/length(b);
fprintf('b) średnia artm wektora ');
fprintf (' %d',b);
fprintf(' to %d\n',average)




    
