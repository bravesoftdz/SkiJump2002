Uses Dos,FGraphB;
var d:SearchRec;
    p:TPaleta;
    ss:string;
    x,y,mx:integer;







Procedure SaveASGFXFile(plik:String);
var xx,yy:integer;
    F:File of byte;
    b:Byte;
begin
     assign(f,plik);
     rewrite(f);
     for xx:=0 to 119 do
     for yy:=0 to 27 do
      begin
       b:=getpixel(xx,yy,1);
       write(f,b);
      end;
     close(F);
end;

begin
     InitFGraph;
     newlayer;
     loadraw('menu.raw',1);
     getpal(p);
     loadgif('skijump.gif',1);
     ekran2pal(0,0,130,30,p,1);
     saveasGFXfile('skijump');
     movebuf2screen;
     CloseFGraph;
end.