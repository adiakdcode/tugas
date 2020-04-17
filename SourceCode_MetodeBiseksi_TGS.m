syms x;
disp('----------------------------------------------------------------------------------------------------------');
disp('                                      PROGRAM METODE BISEKSI                                              ');
disp('----------------------------------------------------------------------------------------------------------');
f=input('Input persamaan f(x): ');
a=input('Input Nilai a : ');
b=input('Input Nilai b : ');
et=input('Input Error Toleransi : ');
error=abs(b-a);
iterasi=1;
disp('----------------------------------------------------------------------------------------------------------');
disp(' iterasi     a            b            x(a+b)/2        f(a)          f(b)          f(x)       Error');
disp('----------------------------------------------------------------------------------------------------------');
x1lama=a; x1baru=b;
while (error > et ) & (x1lama ~= x1baru);
    fa=subs(f,x,a);%Mengitung nilai f(a)
    fb=subs(f,x,b);%Mengitung nilai f(b)
    x1=(a+b)/2; %Rumus Metode Biseksi
    x1lama=x1baru;
    x1baru=x1;
    fx= subs(f,x,x1); %Mengitung nilai f(x)
    fprintf('%2d %15.8f %14.8f %13.8f %13.8f %13.8f %13.8f %13.8f \n',iterasi,a,b,x1,fa,fb,fx,error);
    if fa*fx < 0
       b=x1; 
    else
       a=x1; 
    end
    error=abs(b-a);  % Menghitung Nilai error
    iterasi=iterasi+1;
end
disp('----------------------------------------------------------------------------------------------------------');
fprintf("Didapatkan Akar   x    = %13.8f\n ",x1);
fprintf("Dengan nilai dari f(x) = %13.8f\n ",fx);
fprintf("Dengan nilai Error     = %14.8f\n ",error); %Masih Ngebug Bu
disp('----------------------------------------------------------------------------------------------------------');

