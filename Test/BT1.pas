program test;
const f1='bt.in'; f2='bt.out';
var
    n,i: integer;
    nums,e: real;
begin
    assign(input, f1); reset(input); read(n); close(input);
    assign(output, f2); rewrite(output);
    if (n>=2) and (n<=10) then begin
        e:=1; nums:=11;
        for i:=1 to n do e:=e*10;
        while(nums < e) do begin
            write(nums:0:0, ' ');
            nums:=nums+11;
        end;
    end;
end.
