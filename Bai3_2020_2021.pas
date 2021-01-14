program bai3;
const f1='EXPRESS.INP'; f2='EXPRESS.OUT';
var
	str: string[10];
	i,d,w: longint;
	vc: real;
begin
	assign(input, f1); reset(input); read(str); close(input);
	assign(output, f2); rewrite(output);
	if Length(str) >= 4 then begin
		w:=0;
		for i:=1 to Length(str) do begin
			Val(str[i], d); w:=w+(d*1000);
		end;
		w:=w div Length(str);
		vc:=0;
		for i:=1 to w do begin
			if i<=1000 then vc:=vc+6500
			else if (i>1000) and (i<=2500) then vc:=vc+8000
			else if (i>2500) and (i<=5000) then vc:=vc+12000
			else vc:=vc+19000;
		end;
		vc:=vc+(vc*0.1);
		writeln(w); write(vc:0:2);
	end;
	close(output);
end.
