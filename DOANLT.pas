program practice;
const fin='bt.in';fout='bt.out';
var
  n,m,x,y: longint;
  i,k,s,j: longint;
  a: array[1..1000000] of longint;
begin
  assign(input, fin); reset(input); readln(n);
  assign(output, fout); rewrite(output);
  if(n > 0) and (n < 1000000) then begin
    for i:=1 to n do read(a[i]); readln(m);
    for k:=1 to m do begin
      s:=0; read(x,y); for j:=x to y do s:=s+a[j];
      writeln(s);
    end;
  end;
  close(input); close(output);
end.
