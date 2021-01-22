program practice;
const fin='bt.in';fout='bt.out';
var
  i,k,x: integer;
  s,sf: string[255];
begin
  assign(input, fin); reset(input); readln(i);
  assign(output, fout); rewrite(output);
  for x:=1 to i do begin
    readln(s); sf:='';
    for k:=1 to Length(s) do if Pos(s[k], sf) = 0 then sf:=sf+s[k];
    writeln(Length(sf));
  end; close(input); close(output);
end.
