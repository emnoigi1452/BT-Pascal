const f1='bai4.in'; f2='bai4.out';
var n,j: longint;
    a: array[1..1000000] of longint;
    
function max(r1: array of longint): longint;
var x,s: longint;
begin s:=-maxlongint;
  for x:=0 to n-1 do
    if(r1[x]>s) then s:=r1[x];
  max:=s;
end;

function min(r2: array of longint): longint;
var y,z: longint;
begin y:=maxlongint;
  for z:=0 to n-1 do
    if(r2[z]<y) and (r2[z]<>-1) then y:=r2[z];
  min:=y;
end;

procedure swap;
var m1,m2,i: longint;
begin
  m1:=max(a); m2:=min(a);
  for i:=1 to n do begin
    if a[i]=m1 then write(m2, ' ')
    else if a[i]=m2 then write(m1, ' ')
    else write(a[i], ' ');
  end;
end;

begin
  assign(input,f1); reset(input); read(n);
  assign(output,f2); rewrite(output);
  for j:=1 to n do read(a[j]);
  swap; close(input); close(output);
end.
