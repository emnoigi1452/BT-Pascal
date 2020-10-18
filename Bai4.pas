program bt4;
const f1='pt.in';
      f2='pt.out';
var
   a,b: integer;
begin
   assign(input, f1); reset(input);
   assign(output, f2); rewrite(output);
   readln(a,b);
   if (b = 0) and (a = 0) then
     writeln('Phuong trinh co vo so nghiem!')
    else if (b = 0) and (a <> 0) then
      writeln('x co gia tri bang 0')
    else if (b <> 0) and (a = 0) then
      writeln('Phuong trinh khong co nghiem!')
    else
      writeln('x co gia tri ', (b * -1) div a);
    close(input); close(output);
end.
