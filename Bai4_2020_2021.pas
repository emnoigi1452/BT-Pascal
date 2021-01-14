program bai3;
const f1='THUENHA.INP'; f2='THUENHA.OUT';
var
	n,m,k,r,i: integer;
	gia,pos: integer;
	bool: boolean;
	ar: array[1..100] of integer;
begin
	assign(input, f1); reset(input); read(n,m,k);
	assign(output, f2); rewrite(output);
	if(n>=2) and (n<=1000) and (m>=1) and (m<=n) and (k>=1) and (k<=1000) then begin
	    for i:=1 to n do begin read(r); if (r>=0) and (r<=100) then ar[i]:=r; end;
	    gia:=maxint; pos:=0; bool:=false;
	    for i:=1 to n do begin
	        r:=ar[i];
	        if(r<=k) and (r<gia) and (i<>m) then begin
	            bool:=true; gia:=r; pos:=i;
	        end;
	    end;
	    pos:=abs(pos-m);
	    if not bool then write(-1) else write(pos*10);
	end;
	close(input); close(output);
end.
