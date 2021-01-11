program test;
const f1='bt.in'; f2='bt.out';
var
    s1,s2,s3: string;
    i,len: integer;
    bool: boolean;
begin
    assign(input, f1); reset(input); readln(s1); readln(s2);
    assign(output, f2); rewrite(output);
    len:=Length(s1); bool:=true;
    s1:=UpCase(s1); s2:=UpCase(s2);
    for i:=1 to len do begin
        if Pos(s1[i], s2) = 0 then bool:=false; 
    end;
    len:=Length(s2);
    for i:=1 to len do begin
        if Pos(s2[i], s1) = 0 then bool:=false;
    end;
    s3 := '';
    if bool then begin
        for i:=1 to Length(s1) do
            if Pos(s1[i], s3) = 0 then s3:=s3+s1[i];
        writeln('YES'); write(s3);
    end; else write('NO');
    close(input); close(output);
end.
