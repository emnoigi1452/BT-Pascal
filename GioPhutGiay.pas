program test;
const f1='clock.in';
      f2='clock.out';
var
    n: longint;
    h,p,s: integer;
begin
    assign(input, f1); reset(input);
    assign(output, f2); rewrite(output);
    h:=0; p:=0; s:=0;
    readln(n);
    h:=n div 3600;
    p:=(n mod 3600) div 60;
    s:=n mod 60;
    writeln(h,' gio ', p, ' phut ', s, ' giay');
    close(input); close(output);
end.
