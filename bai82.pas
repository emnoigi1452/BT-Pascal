program b82;
var n: longword;
function isp(num: longword): boolean;
var p: word;
begin isp:=true;
  if (num < 2) or (num mod 2 = 0) then isp:=false
  else begin
    for p:=2 to trunc(sqrt(num)) do
	  if num mod p = 0 then isp:=false;
  end;
end;
function dsum(num: longword): byte;
var sum: byte;
begin sum:=0;
  while(num > 0) do begin
    sum:=sum + (num mod 10);
	num:=num div 10;
  end; dsum:=sum;
end;
procedure getpass;
var continue: boolean;
begin continue:=true;
  while continue do begin n:=n+2;
    if isp(n) and (dsum(n) mod 2 = 0) then continue:=false;
  end; write('Mat khau la: ',n);
end;
begin read(n);
  if n mod 2 = 0 then dec(n); getpass;
end.