program practice;
const fin='bt.in';fout='bt.out';
var
  t,cin,cout: integer;
  i,k: integer;
  s: string[200];
  bool: boolean;
begin
  assign(input, fin); reset(input); readln(t);
  assign(output, fout); rewrite(output);
  if (t > 0) and (t < 100) then begin
  for k:=1 to t do begin
    readln(s); cin:=0; cout:=0; bool:=true;
    for i:=1 to Length(s) do begin
      if s[i] = '(' then inc(cin) else if s[i] = ')' then inc(cout);
      if cout > cin then bool:=false;
    end;
    if cout <> cin then bool:=false; if bool then writeln('YES') else writeln('NO');
  end; end; close(input); close(output);
end.
