program bt4;
const f1='pt.in'; f2='pt.out';
var
  a,b: real;
  x: real;
begin
  assign(input, f1); reset(input); readln(a,b);
  assign(output, f2); rewrite(output);
  if(b = 0) then
    writeln('Phuong trinh co nghiem la 0!')
  else
  begin
    if(a = 0) then
      writeln('Phuong trinh vo nghiem!')
    else
      x:=(b*(-1)) / a;
      writeln('Phuong trinh co nghiem x = ', x:0:2);
  end;
  close(input); close(output);
end.
