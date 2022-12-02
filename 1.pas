
uses crt;
procedure q;
begin
writeln('1 - Нажмите чтобы показать Приближенное значение');
writeln('2 - Нажмите чтобы показать Точное значение');
writeln ('3 - Нажмите чтобы показать Абсолютная погрешность');
writeln('4 - Нажмите чтобы показать Относительная погрешность');
writeln('5 - Выйти');
writeln('0 - Очистить экран');
end;
function f(x:real):real;
begin
f:=2*power(x,3)-2*power(x,2)-5*x+7;                  
end;
function f1(x:real):real;
begin
f1:=(x**4)/2-(2*x**3)/3-(5*x**2)/2+7*x;         
end;  
var a,b,s,y:real;
    n,i,g:integer;
begin
  repeat
writeln('Введите левую границу интервала a= от -1 до 0');
readln(a);
until (a >= -1) and (a <= 0);
repeat
writeln('Введите правую границу интервала b= от 0 до 2');
readln(b);
until (b >= 0) and (b > a) and (b <= 2);
repeat
write('Введите число промежутков от 20 до 1000 n=');
readln(n);
until (n >= 20) and (n <= 1000);
s:=(f(a)+f(b))/2;  
for i := 1 to n - 1 do
begin
  s:=s+f(a+i*((b-a)/n));
end;
 s*=(b-a)/n;
 y:=f1(b)-f1(a);

begin
repeat
q;
read(g);
case g of
1: begin writeln('Приближенное значение =',Abs(s):0:5) end;
2: begin writeln('Точное значение=',Abs(y):0:5) end;
3: begin writeln('Абсолютная погрешность=',abs(y)-abs(s):0:5) end;
4: begin writeln('Относительная погрешность=',abs(y-s)/y) end;
5: begin exit end;
0: begin ClrScr end;
end;
until g>=5;
end;
end.