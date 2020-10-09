program test;
const f1='dnt.in';
      f2='dnt.out';
var
    n: integer;
    x, y: integer;
    b: boolean;
begin
    assign(input, f1); reset(input);
    assign(output, f2); rewrite(output);
    readln(n);
    if n < 2 then
        writeln('Khong co so nguyen to nao nho hon 2!')
    else
        begin
            for x:=2 to n do
            begin
                b:=true;
                for y:=2 to x - 1 do
                begin
                    if x mod y = 0 then
                    b:=false;
                end;
                if b then
                write(x, ' ');
            end;
        end;
    close(input); close(output);
end.
