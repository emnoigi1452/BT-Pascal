program test;
const f1='bt.in'; f2='bt.out';
var
  ar: array[1..1000] of integer;
  id,len,wid,wei: longint;
  i,j,k,valid,r,char: integer;
  s: string;
begin
  assign(input, f1); reset(input); readln(i);
  assign(output, f2); rewrite(output);
  if(i > 0) and (i < 1000) then begin
    valid:=1;
    for k:=1 to i do begin 
      read(r); if(r > 0) and (r < 1000000000) then begin valid:=valid+1; ar[valid-1]:=r; end;
    end;
    {Getting results}
    for k:=1 to valid-1 do begin
      id:=ar[k];  Str(id,s);
      len:=Length(s); wid:=0; wei:=0;
      for j:=1 to len do begin Val(s[j], char); wid:=wid+char; end;
      for j:=1 to len do begin Val(s[j], char); wei:=wei+sqr(char); end;
      write(len, ' ', wid, ' ', wei); writeln('');
    end;
  end;
  close(input); close(output);
end.
