program practice;
const f1='bt.in'; f2='bt.out';
var
  m,n: real;
begin
  assign(input, f1); reset(input); readln(n);
  assign(output, f2); rewrite(output);
  if (n = 1) then write(5000)
  else begin
    if(n >= 2) and (n <= 5) then m:=5000 + ((n-2)+1)*4500
    else m:=5000 + 4500*4 + ((n-6)+1)*3500;
    if(n > 120) then m:=m*0.9;
    write(m:0:0)
  end;
  close(input); close(output);
end.
