program bai1;
const f1='bt1.in'; f2='bt1.out';
var ev,lod,k: longint;
    bool: boolean;
begin
  assign(input, f1); reset(input); bool:=true;
  assign(output, f2); rewrite(output);
  ev:=0; lod:=1;
  while bool do begin
    read(k); if k = 0 then bool:=false;
    if bool and (k >= 0) then begin
      if k mod 2 = 0 then inc(ev) else if k > lod then lod:=k;
    end;
  end; writeln(ev); write(lod);
  close(input); close(output);
end.
