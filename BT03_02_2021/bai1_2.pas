program bt1;
var n,k,i,c: longint;
    s,ps,l,pl: longint;
    es: int64;
    ar: array[1..1000000] of longint;
procedure sort;
var prev,s1,i1,i2: longint;
begin prev:=-maxlongint;
  for i1:=1 to n do begin s1:=maxlongint;
    for i2:=1 to n do if(ar[i2]<s1) and (ar[i2]>prev) then s1:=ar[i2];
    write(s1, ' '); prev:=s1;
  end;
end;
procedure work;
begin
  l:=-maxlongint; s:=maxlongint; pl:=0; ps:=0; es:=0; c:=0;
  for i:=1 to n do begin
    if ar[i]>l then begin l:=ar[i]; pl:=i; end;
    if ar[i]<s then begin s:=ar[i]; ps:=i; end;
    if ar[i] mod 2 = 0 then es:=es+sqr(ar[i]);
    if ar[i] = k then inc(c);
  end;
  writeln(l, ' ', pl);
  writeln(s, ' ', ps);
  writeln(es);
  writeln(c);
end;
begin
  assign(input, 'bai1.inp'); reset(input); read(n,k);
  assign(output, 'bai1.out'); rewrite(output);
  for i:=1 to n do read(ar[i]); work; sort;
  close(input); close(output);
end.
