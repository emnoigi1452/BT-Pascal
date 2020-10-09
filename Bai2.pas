program test;
const f1='nguyento.in';
      f2='nguyento.out';
var n,j: integer;
    nguyento: boolean;
begin
    assign(input, f1); reset(input);
    assign(output, f2); rewrite(output);
    readln(n);
    if n < 2 then
        writeln('False')
    else
    
    begin
        nguyento:=true;
        for j:=2 to n - 1 do
        begin
            if n mod j = 0 then
                nguyento:=false;
                break
        end;
        if nguyento then
            writeln('True')
        else
            writeln('False');
    end;
    close(input); close(output);
end.
