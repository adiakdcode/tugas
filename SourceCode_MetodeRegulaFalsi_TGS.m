syms x;
disp('--------------------------------------------------------------------------------------------------');
disp('                                  PROGRAM METODE REGULAFALSI                                      ');
disp('--------------------------------------------------------------------------------------------------');
f=input('Input persamaan f(x): ');
a=input('Input Nilai a : ');
b=input('Input Nilai b : ');
it=input('Input Jumlah Iterasi : ');
iterasi=1;
disp('--------------------------------------------------------------------------------------------------');
disp(' iterasi     a            b          x=(fb*a-fa*b)/(fb-fa)    f(a)          f(b)          f(x)');
disp('--------------------------------------------------------------------------------------------------');
x1lama=a; x1baru=b;
while(iterasi <= it )& (x1lama ~= x1baru);
    fa=subs(f,x,a);%Mengitung nilai f(a)
    fb=subs(f,x,b);%Mengitung nilai f(b)
    x1lama=x1baru;
    x1=(fb*a-fa*b)/(fb-fa);% Rumus metode rugula falsi
    x1baru=x1;
    fx= subs(f,x,x1); %mengitung nilai f(c)
    fprintf('%2d %15.8f %14.8f %13.8f %20.8f %13.8f %13.8f\n',iterasi,a,b,x1,fa,fb,fx);
    if fa*fx < 0
       b=x1; 
    else
       a=x1; 
    end
    iterasi=iterasi+1;
end
disp('----------------------------------------------------------------------------------------------------');
fprintf("Didapatkan Akar   x    = %13.8f\n ",x1);
fprintf("Dengan nilai dari f(x) = %13.8f\n ",fx);
disp('----------------------------------------------------------------------------------------------------');

