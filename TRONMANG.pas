program practice;
const f1='bt.in'; f2='bt.out'; max=maxlongint;
var
  n,m,i,s,k,k2,i1,i2: longint;
  a,b: array[1..50000] of longint;
  bool: boolean;
begin
  assign(input, f1); reset(input); readln(n,m);
  assign(output, f2); rewrite(output);
  for i:=1 to n do read(a[i]); for i:= 1 to m do read(b[i]);
  for i:=1 to n+m do begin s:=max; bool:=false;
    i1:=0; i2:=0;
    for k:=1 to n do
        if(a[k] < s) and (a[k] <> -1) then begin s:=a[k]; i1:=k; end;
    for k2:=1 to m do
        if(b[k2] < s) and (b[k2] <> -1) then begin s:=b[k2]; bool:=true; i2:=k2; end;
    writeln(s); if bool then b[i2]:=-1 else a[i1]:=-1;
  end; close(input); close(output);
end.
