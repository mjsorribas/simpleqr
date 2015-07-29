program simpleqr;
uses Crt;
var
   modulos:array[21..21] of integer;
   version:integer;
   codewords:integer;
   correccionError:char;
   separadores:integer;

function obtenerCorrecciondeError(tipo:char):integer;
begin
     case tipo of
          'L': obtenerCorrecciondeError:=7;
          'M': obtenerCorrecciondeError:=15;
          'Q': obtenerCorrecciondeError:=25;
          'H': obtenerCorrecciondeError:=30;
     end;
end;
procedure obtenerPatronAlineamientoMini();
begin
      gotoxy(20,20);
      write(chr(219));
      gotoxy(21,20);
      write(chr(219));
      gotoxy(22,20);
      write(chr(219));
      gotoxy(20,21);
      write(chr(219));
      gotoxy(21,21);
      write(chr(219));
      gotoxy(22,21);
      write(chr(219));
      gotoxy(20,22);
      write(chr(219));
      gotoxy(21,22);
      write(chr(219));
      gotoxy(22,22);
      write(chr(219));
end;
procedure obtenerPatronAlineamientoMedio();
begin
      //superior
      gotoxy(19,19);
      write(chr(255));
      gotoxy(20,19);
      write(chr(255));
      gotoxy(21,19);
      write(chr(255));
      gotoxy(22,19);
      write(chr(255));
      gotoxy(23,19);
      write(chr(255));
      //inferior
      gotoxy(19,23);
      write(chr(255));
      gotoxy(20,23);
      write(chr(255));
      gotoxy(21,23);
      write(chr(255));
      gotoxy(22,23);
      write(chr(255));
      gotoxy(23,23);
      write(chr(255));
      //lateral izquierda
      gotoxy(19,19);
      write(chr(255));
      gotoxy(19,20);
      write(chr(255));
      gotoxy(19,21);
      write(chr(255));
      gotoxy(19,22);
      write(chr(255));
      gotoxy(19,23);
      write(chr(255));
      //lateral derecho
      gotoxy(23,19);
      write(chr(255));
      gotoxy(23,20);
      write(chr(255));
      gotoxy(23,21);
      write(chr(255));
      gotoxy(23,22);
      write(chr(255));
      gotoxy(23,23);
      write(chr(255));
end;

procedure obtenerPatronAlineamientoGrande();
begin
      //superior
      gotoxy(18,18);
      write(chr(255));
      gotoxy(19 ,18);
      write(chr(255));
      gotoxy(20,18);
      write(chr(255));
      gotoxy(21,18);
      write(chr(255));
      gotoxy(22,18);
      write(chr(255));
      gotoxy(23,18);
      write(chr(255));
      gotoxy(24,18);
      write(chr(255));
      //inferior
      gotoxy(19,24);
      write(chr(255));
      gotoxy(20,24);
      write(chr(255));
      gotoxy(21,24);
      write(chr(255));
      gotoxy(22,24);
      write(chr(255));
      gotoxy(23,24);
      write(chr(255));
      gotoxy(23,24);
      write(chr(255));
      gotoxy(24,24);
      write(chr(255));
      //lateral izquierda
      gotoxy(19,24);
      write(chr(255));
      gotoxy(19,20);
      write(chr(255));
      gotoxy(19,21);
      write(chr(255));
      gotoxy(19,22);
      write(chr(255));
      gotoxy(19,23);
      write(chr(255));
       gotoxy(23,18);
      write(chr(255));
      gotoxy(24,18);
      write(chr(255));
      //lateral derecho
      gotoxy(23,19);
      write(chr(255));
      gotoxy(23,20);
      write(chr(255));
      gotoxy(23,21);
      write(chr(255));
      gotoxy(23,22);
      write(chr(255));
      gotoxy(23,23);
      write(chr(255));
      gotoxy(23,18);
      write(chr(255));
      gotoxy(24,18);
      write(chr(255));
end;

function obtenerCodewords(version:integer):integer;
begin
     case version of
          1: obtenerCodewords:=26;
          2: obtenerCodewords:=44;
          3: obtenerCodewords:=70;
          4: obtenerCodewords:=100;
          5: obtenerCodewords:=134;
          6: obtenerCodewords:=172;
          7: obtenerCodewords:=196;
          8: obtenerCodewords:=242;
          9: obtenerCodewords:=292;
          10: obtenerCodewords:=346;
          11: obtenerCodewords:=404;
          12: obtenerCodewords:=466;
          13: obtenerCodewords:=532;
          14: obtenerCodewords:=581;
          15: obtenerCodewords:=655;
          16: obtenerCodewords:=733;
          17: obtenerCodewords:=815;
          18: obtenerCodewords:=901;
          19: obtenerCodewords:=991;
          20: obtenerCodewords:=1085;
          21: obtenerCodewords:=1156;
          22: obtenerCodewords:=1258;
          23: obtenerCodewords:=1364;
          24: obtenerCodewords:=1474;
          25: obtenerCodewords:=1588;
          26: obtenerCodewords:=1706;
          27: obtenerCodewords:=1828;
          28: obtenerCodewords:=1921;
          29: obtenerCodewords:=2051;
          30: obtenerCodewords:=2185;
          31: obtenerCodewords:=2323;
          32: obtenerCodewords:=2465;
          33: obtenerCodewords:=2611;
          34: obtenerCodewords:=2761;
          35: obtenerCodewords:=2876;
          36: obtenerCodewords:=3034;
          37: obtenerCodewords:=3196;
          38: obtenerCodewords:=3362;
          39: obtenerCodewords:=3532;
          40: obtenerCodewords:=3706;
     end;

end;


begin
        ClrScr;
        obtenerPatronAlineamientoMedio();
        obtenerPatronAlineamientoMini();
end.

