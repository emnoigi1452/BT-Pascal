program fibo;
var n,i: longint;
    ar: array[1..1000000] of longint;
function isprime(input: longint): boolean;
var m: longint;
begin if input < 2 then exit(false);
  for m:=2 to trunc(sqrt(input)) do
    if input mod m = 0 then exit(false);
  exit(true);
end;
begin read(n);
  ar[1]:=1; ar[2]:=1; i:=3;
  while true do begin
    ar[i]:=ar[i-1]+ar[i-2];
    if (ar[i]<=n) then begin
      if isprime(ar[i]) then write(ar[i], ' ');
    end
    else break; inc(i);
  end;
end.
