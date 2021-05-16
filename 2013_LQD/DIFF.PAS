program diff;
var n,i: longint;
    ar: array[1..1000000] of longint;
procedure solve;
var min,max: longint;
    s: longint;
begin
  min:=1000000001; max:=-1;
  for s:=1 to n-1 do begin
    if ar[s]<min then min:=ar[s];
    if ar[s+1]>max then max:=ar[s+1];
  end;
  write(max - min);
end;
begin
  assign(input, 'DIFF.INP'); reset(input); readln(n);
  for i:=1 to n do read(ar[i]);
  assign(output, 'DIFF.OUT'); rewrite(output);
  solve; close(input); close(output);
end.
