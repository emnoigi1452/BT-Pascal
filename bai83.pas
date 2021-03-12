program b83;
var n,i: longword;
    a: array[1..1000000] of longword;
procedure parse;
var p1: longword;
    m: longword;
begin m:=0;
  for i:=1 to n do
    if a[i] > m then m:=a[i];
  p1:=m; m:=0;
  for i:=1 to n do
    if (a[i] > m) and (a[i] < p1) then m:=a[i];
  if m = 0 then write(-1) else write(p1+m);
end;
begin readln(n);
  if EOLn then write(-1)
  else begin
    for i:=1 to n do read(a[i]);
	parse;
  end;
end.