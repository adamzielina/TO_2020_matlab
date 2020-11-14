A=rand(5,10);
m=max(A);
mm=max(m);
B=[];
[i,j]=size(A);
for x1=1:i
    for x2=1:j
        B(x1,x2)=A(x1,x2)/mm;
    end
end
fprintf('a) unormowana macierz A\n');
disp(B)

clear

A=[0,3,0;0,2,3;0,0,1];
[i,j]=size(A);
A
for x1=1:i
    for x2=1:j
        if x2<x1 & A(x1,x2)~=0
            disp('b) to nie jest macierz trójkątna górna');
            return;
        end
    end
end
disp('b) to jest macierz trójkątna górna');
  
  %brakuje ifa dla górnej części macierzy. program działa prawie dobrze         
