const f1='bai1.in';f2='bai1.out';
var tb,ta,eu,i: longint;
    cost: int64;

procedure solve;
begin
  eu:=ta-tb; writeln(eu);
  if eu<=100 then begin cost:=eu*1400; write(cost); end
  else begin
    cost:=100*1400; for i:=101 to eu do begin
      if i<=150 then cost:=cost+1600
      else if(i<=200) and (i>150) then cost:=cost+1900
      else cost:=cost+2100;
    end;
  end; write(cost);
end;

begin
  assign(input,f1); reset(input); read(tb,ta);
  assign(output,f2); rewrite(output);
  solve; close(input); close(output);
end.
