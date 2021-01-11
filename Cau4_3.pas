program bt;
const f1='bt.in'; f2='bt.out';
var
    s1,s2,s3: string;
    bool: boolean;
    i: integer;
begin
    assign(input, f1); reset(input);
    assign(output, f2); rewrite(output);
    readln(s1); s1:=UpCase(s1);
    readln(s2); s2:=UpCase(s2);
    bool:= true;
    for i:=1 to Length(s1) do if Pos(s1[i], s2) = 0 then bool:= false;
    for i:=1 to Length(s2) do if Pos(s2[i], s1) = 0 then bool:= false;
    if not bool then write('NO') else begin
        s3 := '';
        for i:=1 to Length(s1) do if Pos(s1[i], s3) = 0 then s3:=s3+s1[i];
        writeln('YES'); write(s3);
    end;
    close(input); close(output);
end.
