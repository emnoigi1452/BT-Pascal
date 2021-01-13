program test;
const f1='bt.in'; f2='bt.out';
var
    n,x,y: integer;
    i,k: integer;
    num: longint;
    ar: array[0..1000,0..1000] of longint;
begin
    assign(input, f1); reset(input); readln(n); close(input);
    assign(output, f2); rewrite(output);
    if (n mod 2 = 1) then begin 
        x:=n div 2; y:=n-1; ar[x,y]:=1;
        for num:=2 to n*n do begin
            x:=x-1; y:=y+1;
            if (x < 0) and (y = n) then begin x:=0; y:=n-2 end
            else begin if x<0 then x:=n-1; if y=n then y:=0; end;
            if ar[x,y] <> 0 then begin x:=x+1; y:=y-2; end;
            ar[x,y]:=num;
        end;
        for i:=0 to n-1 do begin
            for k:=0 to n-1 do write(ar[i,k], ' '); writeln('');
        end;
    end;
end.
