function mat=plano(vid,a,alfa,z,o,poly1,poly2)
linea = zeros(o,3);
for i=1:1:o
    contador = 0;
    if fix(z/2) == z/2
        a.stepperStep(2,'forward','double',fix(931/o));
    else
        a.stepperStep(2,'backward','double',fix(931/o));
    end
    radio = distanciaop(vid,poly1,poly2); 
    if radio == poly(4)
        contador = contador + 1;
    else
        linea(i-contador,3) = alfa*z;
        linea(i-contador,2) = fix(2*pi/o*i); 
        linea(i-contador,1) = radio;
    end
end
mat = linea;