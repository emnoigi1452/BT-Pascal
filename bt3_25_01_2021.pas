program bai1;
const f1='bt3.in'; f2='bt3.out';
var ld,len,s: shortint;
    x1,x2: longint;
    bool: boolean;
begin
  assign(input, f1); reset(input); read(x1);
  assign(output, f2); rewrite(output);
  s:=0; x2:=0; len:=0; bool:=false;
  while x1 > 0 do begin
    inc(len); ld:=x1 mod 10; if (len = 1) and (ld = 0) then bool:=true;
    x2:=x2*10 + ld;
    x1:=x1 div 10; s:=s+ld;
  end; writeln(x2); if bool then begin dec(len); writeln(len); end else writeln(len); write(s);
  close(input); close(output);
end.
