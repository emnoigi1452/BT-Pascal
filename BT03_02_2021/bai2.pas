const f1='bai2.in';f2='bai2.out';
var limit: longint;
    x: longint;

function ip(n: longint): boolean;
var b: boolean;
    i: longint;
begin b:=true;
  for i:=2 to n div 2 do
    if n mod i = 0 then b:=false;
  ip:=b;
end;

procedure solve;
begin
  for x:=2 to limit do
    if ip(x) then write(x, ' ');
end;

begin
  assign(input,f1); reset(input); read(limit);
  assign(output,f2); rewrite(output);
  solve; close(input); close(output);
end.
