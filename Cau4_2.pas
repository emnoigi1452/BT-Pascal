program test;
const f1='bt.in';f2='bt.out';
var
  ar: array[1..100] of integer;
  n,i,j,k,valid,s,l: integer;
begin
  assign(input, f1); reset(input); readln(n);
  assign(output, f2); rewrite(output);
  if(n <= 100) and (n >= 0) then begin
  valid:=1;
    for i:=1 to n do begin read(k);
      if(k >= -100) and (k <= 100) then begin ar[valid]:=k; valid:=valid+1; end;
    end; 
    j:=0; {Assign sum value}
    for i:=1 to valid do if ar[i] > 0 then j:=j+ar[i];
    if(j = 0) then begin
      l:=-maxint; for i:=1 to valid do if(l < ar[i]) and (ar[i] < 0) then l:=ar[i];
      j:=l;
    end else begin
      l:=maxint; s:=-maxint;
      for i:=1 to valid do if(s < ar[i]) and (ar[i] < 0) then s:=ar[i];
      for i:=1 to valid do if(l > ar[i]) and (ar[i] >= 0) then l:=ar[i];
      if(l < abs(s)) then j:=j-l else j:=j+s;
    end;
    writeln(j);
  end;
  close(input); close(output);
end.
