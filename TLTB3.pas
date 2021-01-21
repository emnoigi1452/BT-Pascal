program practice;
const f1='bt.in'; f2='bt.out';
var
  m,n: real;
begin
  assign(input, f1); reset(input); readln(n);
  assign(output, f2); rewrite(output);
  {sqrt(1^3 + 2^3 + ... + n^3) = 1 + 2 + ... + n}
  if (n>=1) and (n<=5000000) then begin m:=(1 + n) * n / 2; write(m:0:0); end;
  close(input); close(output);
end.
