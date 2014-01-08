function argout=distanciaop(poly,poly2)
    snapshot = getsnapshot(vid);
    snapshot = gris(snapshot,2);
    centropx = centopx(snapshot,255,poly2);
    argout=(poly(1)*centropx(1)^3+poly(2)*centropx(1)^2+poly(3)*centropx(1)+poly(4));