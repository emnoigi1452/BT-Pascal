program b81;
var m,n,r: double;
procedure solve;
var s: string;
begin
  if (m*n) < (sqr(r)*3.14) then write('Khong dao duoc')
  else begin write('Dien tich con lai la: ',trunc(m*n - (sqr(r)*3.14)));
    Str(1-frac(sqr(r)*3.14):0:2,s);
	write(Copy(s,2,3));
  end;
end;
begin read(m,n,r);
  solve;
end.