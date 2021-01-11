program pascal;
const f1='bt.in'; f2='bt.out';
var
    s,cstr,format: string;
    c,i,k: integer;
    ch: char;
begin
    assign(input, f1); reset(input); readln(s);
    assign(output, f2); rewrite(output);
    s:=UpCase(s); format:='';
    for i:=1 to Length(s) do begin
        c:=0; ch:=s[i];
        if Pos(ch, format) = 0 then begin
            for k:=1 to Length(s) do
                if s[k] = ch then c:=c+1;
            Str(c, cstr); format:=format + cstr + ch;
        end;
    end;
    write(format); close(input); close(output);
end.
