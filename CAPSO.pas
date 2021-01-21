program practice;
const f1='bt.in'; f2='bt.out'; none=-1;
var
  n,i,k1,k2,c: longint;
  r: array[1..1000000] of longint;
begin
  assign(input, f1); reset(input); read(n,i);
  assign(output, f2); rewrite(output);
  if (n <= 1000000) and (i <= 1000000) then begin
    for k1:=1 to n do read(r[k1]);
    c:=0; {Initialization}
    for k1:=1 to n do begin
    if r[k1] <> none then 
      for k2:=1 to n do
        if (k2 <> k1) and (r[k2] + r[k1] = i) and (r[k2] <> none) then c:=c+1;
    r[k1]:=none;
    end;
    write(c);
  end; close(input); close(output);
end.
