program test;
const f1='bt.in'; f2='bt.out';
var
  ao,lop,i,sum,nhom,j,max,max2: integer;
  ar: array[1..100] of integer;
begin
  assign(input, f1); assign(output, f2);
  reset(input); rewrite(output);
  readln(lop);
  if not (lop <= 100) and (lop >= 1) then writeln('So lop khong hop le!')
  else begin
    for i:=1 to lop do read(ar[i]); sum:=0;
    for i:=1 to lop do sum:=sum+ar[i]; max:=ar[1]; max2:=ar[1];
    
    {Begin calculation} nhom:=0;
    for i:=1 to lop do begin
        ao:=ar[i]; j:=i+1;
        if ao<>-1 then begin
            while (ao<sum) and (j<=lop) do begin
                if ao+ar[j]<=sum then begin ao:=ao+ar[j]; ar[j]:=-1 end; j:=j+1;
            end;
            if(ao=sum) then nhom:=nhom+1;
        end;
    end;
    writeln(nhom);
  end;
  close(output); close(input);
end.
