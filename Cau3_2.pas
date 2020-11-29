program bt3;
const f1='bt.in'; f2='bt.out';
var
  n,j,k,valid,len,v: integer;
  codes: array[1..100000] of real;
  id,r: real;
  scan,char: string;
begin
  assign(input, f1); reset(input); readln(n);
  assign(output, f2); rewrite(output);
  if (n > 0) and (n < 100000) then begin
    j:=1; valid:=0;
    for j:=1 to n do begin
        read(r);
        if (r > 0) and (r < 1000000000000) then begin valid:=valid+1; codes[valid]:=r end;
    end;
    for j:=1 to valid do begin
      id:=0; Str(codes[j]:0:0,scan); len:=Length(scan);
      for k:=len downto 1 do begin
        char:=scan[k]; Val(char,v);
        if(v mod 2 = 0) and (v <> 0) then id:=(id*10) + v;
      end;
      if(id <> 0) then writeln(id:0:0) else writeln('NO');
    end;
  end;
  close(input); close(output);
end.
