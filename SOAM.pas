program practice;
const f1='bt.in'; f2='bt.out';
var
  i,n,s,k: longint;
begin
  assign(input, f1); reset(input); readln(i);
  assign(output, f2); rewrite(output);
  if (i >= 1) and (i <= 100000) then begin
    s:=-maxlongint;
    for k:=1 to i do begin
      readln(n); if (n > s) and (n < 0) then s:=n;
    end; if s <> -maxlongint then write(s) else write(0);
    close(input); close(output);
  end;
end.
