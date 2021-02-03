const f1='bai3.in';f2='bai3.out';
var n,i: integer;
    a: array[1..1000] of longint;

function getid(r: array of longint): integer;
var s: longint; id: integer;
    i2: integer;
begin s:=0;
  for i2:=1 to n do
    if(a[i2]>s) and (a[i2]<>1000001) then begin
        s:=a[i2]; id:=i2; end;
  getid:=id;
end;

procedure sort;
var el: longint;
begin
  for i:=1 to n do begin
    el:=a[getid(a)]; a[getid(a)]:=1000001;
    write(el, ' ');
  end;
end;

begin
  assign(input,f1); reset(input); read(n);
  assign(output,f2); rewrite(output);
  for i:=1 to n do read(a[i]);
  sort; close(input); close(output);
end.
