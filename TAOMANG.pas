program practice;
const f1='bt.in'; f2='bt.out';
var
  n,a,m: longint;
  k1,i,k2: longint;
  sum: longint;
begin
  assign(input, f1); reset(input); readln(n,a,m);
  assign(output, f2); rewrite(output); sum:=0;
  for k1:=1 to n do begin
    i:=1; for k2:=1 to k1 do i:=i*a; i:=(i mod m) + 1;
  end; sum:=sum + i;
  write(sum); close(input); close(output);
end.
