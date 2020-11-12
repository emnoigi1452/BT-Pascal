program bt;
const f1='bt.in'; f2='bt.out';
var
  n,i,c: integer;
  parsecode: longint;
  code,char: string;
  p,len,v,codeval: integer;
  ar: array[1..10000] of longint;
begin
  assign(input, f1); reset(input); readln(n);
  assign(output, f2); rewrite(output);
  if n > 10000 then
    writeln('So ma thuong qua lon!')
  else
  begin
    c:=n;
    for i:=1 to n do
    begin
      readln(parsecode);
      if(parsecode < 100000000) and (parsecode > 0) then
        ar[i] := parsecode
      else
        c:=c-1;
    end;
    i:=1; close(input);
    for i:=1 to c do
      begin
        codeval:=0;
        Str(ar[i], code);
        len:=Length(code);
        for p:=1 to len do
        begin
          char:=code[p];
          Val(char,v);
          if v mod 3 <> 0 then
            codeval:=codeval + 2
          else if (v mod 2 = 0) and (v mod 3 = 0) and (v<>0) then
            codeval:=codeval + 3
          else if (v mod 2 = 1) and (v mod 3 = 0) then
            codeval:=codeval + 1
          else if v = 0 then
            codeval:=codeval + 4;
        end;
        writeln(codeval);
      end;
  end;
  close(output);
end.
