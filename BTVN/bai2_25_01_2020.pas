program bai1;
const f1='bt2.in'; f2='bt2.out';
var x: longint;
    h,m,s: shortint;
begin
  assign(input, f1); reset(input); readln(x);
  assign(output, f2); rewrite(output);
  h:=x div 3600; m:=(x - (h * 3600)) div 60;
  s:=x - (h * 3600 + m * 60);
  write(h, ' ', m, ' ', s);
  close(input); close(output);
end.
