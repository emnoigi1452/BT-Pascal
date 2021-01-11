program pascal;
const f1='bt.in'; f2='bt.out';
var
    n,i,k: integer;
    backup,ar: array[1..10000] of integer;
begin
    assign(input, f1); reset(input); readln(n);
    assign(output, f2); rewrite(output);
    if(n < 1000) then begin
        for i:=1 to n+1 do begin
            if i = 1 then begin writeln(1); backup[1]:=1; end
            else begin
                ar[1]:=1; ar[i]:=1;
                for k:=2 to i-1 do ar[k]:=backup[k-1] + backup[k];
                for k:=1 to i do begin backup[k]:=ar[k]; write(ar[k], ' '); end;
                writeln('');
            end;
        end;
    end else write('So qua lon!');
    close(input); close(output);
end.
