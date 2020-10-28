program bt6;
const f1='pt.in'; f2 = 'pt.out';
var
  a,b,c: real;
  dt: real;
  x1,x2: real;
begin
  assign(input, f1); reset(input); readln(a,b,c);
  assign(output, f2); rewrite(output);
  if(a=0) then
    writeln('Gia tri cua a phai khac 0!')
  else
  begin
    dt:=sqr(b) - 4*a*c;
    if(dt > 0) then
      begin
        x1:=(b*(-1) + sqrt(dt)) / (2*a); x2:=(b*(-1) - sqrt(dt)) / (2*a);
        writeln('x1 = ', x1:0:9); writeln('x2 = ', x2:0:9);
      end
    else if(dt = 0) then
      begin
        x1:=b*(-1) / (2*a); writeln('Phuong trinh co nghiem kep: x1 = x2 = ', x1:0:9);
      end
      {Vi x1=x2 - Phuong trinh co nghiem kep}
    else
      writeln('Phuong trinh vo nghiem!');
  end;
  close(input); close(output);
end.
