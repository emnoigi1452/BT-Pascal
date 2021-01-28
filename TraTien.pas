const f1='TRATIEN.INP';f2='TRATIEN.OUT';
var
  n: longint;
  a,b,c,d: integer;
  bool: boolean;
procedure calc;
begin
  if a = 0 then a:=n div 50000
  else begin
    bool:=true;
    if (a-2>=0) and bool then begin inc(b); a:=a-2; bool:=false; end;
    if (b-2>=0) and bool then begin inc(c); b:=b-2; bool:=false; end;
    if (c<>0) and bool then begin dec(c); b:=b+2; bool:=false; end;
    if (b<>0) and bool then begin dec(b); c:=c+2; bool:=false; end;
  end;
end;

procedure print;
begin
  write(a,' x [50000] + ', b, ' x [100000] + ', c, ' x [200000]');
  writeln('');
end;

begin
  assign(input,f1); reset(input); readln(n);
  assign(output,f2); rewrite(output);
  if n mod 50000 <> 0 then write(-1)
  else begin
    a:=0; b:=0; c:=0; d:=1;
    if n div 50000 mod 2 = 1 then while d < n div 50000 do begin calc; inc(d); print; end
    else while d <= n div 50000 do begin calc; inc(d); print; end;
  end;
  close(input); close(output);
end.
