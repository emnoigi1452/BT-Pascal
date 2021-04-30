program cau3;
var s: array[1..100001] of char;
    len: longint;
procedure solve;
var lw,cw,clist: string;
    i,k,max: longint;
begin lw:=''; cw:=''; clist:=''; max:=0;
  for i:=1 to len do begin
    if(s[i]=' ') or (s[i]='.') then begin
      for k:=1 to Length(cw) do
        if Pos(cw[k],clist)=0 then clist:=clist+cw[k];
      if max < Length(clist) then begin
        max:=Length(clist); lw:=cw; end;
      cw:=''; clist:='';
    end else cw:=cw+s[i];
  end;
  write(lw);
end;
begin
  assign(input, 'CAU3.INP'); reset(input); len:=0;
  assign(output, 'CAU3.OUT'); rewrite(output);
  while not EOLn do begin
    inc(len); read(s[len]);
  end; inc(len); s[len]:='.';
  solve;
end.
