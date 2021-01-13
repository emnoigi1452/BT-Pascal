program test;
const f1='bt.in'; f2='bt.out';
var
    s: string[255];
    i,n,k: integer;
begin
    assign(input, f1); reset(input); readln(s); close(input);
    assign(output, f2); rewrite(output);
    n:=0;
    for k:=1 to Length(s) do begin
        Val(s[k], i); n:=n+i;
    end;
    write(n);
end.
