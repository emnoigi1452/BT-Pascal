program magicsquare;
var
  n,i,j,k,k2: integer;
  ar: array[0..100,0..100] of integer;
begin
    assign(input, 'bt.in'); reset(input); readln(n);
    assign(output, 'bt.out'); rewrite(output);
    if(n <= 100) then begin
        if(n mod 2 = 0) then writeln('Vui long nhap so le!')
        else begin
            i:=n div 2; j:=n-1; ar[i,j]:=1;
            for k:=2 to n*n do begin
                i:=i-1; j:=j+1;
                if (i<0) and (j=n) then begin i:=0; j:=n-2; end
                else begin if i < 0 then i:=n-1; if j = n then j:=0; end;
                if ar[i,j] > 0 then begin i:=i+1; j:=j-2; end;
                ar[i,j]:=k;
            end;
            for k:=0 to n-1 do begin
              for k2:=0 to n-1 do write(ar[k,k2]:5, ' ');
              writeln(''); end;
        end;
    end;
    close(input); close(output);
end.
