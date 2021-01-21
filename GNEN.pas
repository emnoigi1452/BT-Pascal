program practice;
const f1='bt.in'; f2='bt.out';
var
  st,gn: string;
  c: shortint;
  i,r: integer;
  c1: char;
begin
  assign(input, f1); reset(input); readln(st);
  assign(output, f2); rewrite(output); gn:='';
  for i:=1 to Length(st) do begin
    c1:=st[i]; if (c1 in ['a'..'z']) and (st[i-1] in ['0'..'9']) then begin
      Val(st[i-1], c); for r:=1 to c do gn:=gn+c1;
    end else if(c1 in ['a'..'z']) and not (st[i-1] in ['0'..'9']) then gn:=gn+c1;
  end; write(gn);
  close(input); close(output);
end.
