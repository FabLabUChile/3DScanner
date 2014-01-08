function mat=replano(z,o,poly1,poly2)
linea = zeros(o,3);
for i=1:1:o
    a.stepperStep(2,'backard','double',931/o);
    linea(i,3) = z;
    linea(i,2) = fix(2*phi/o*i);
    linea(i,1) = distanciaop(poly1,poly2); 
end
mat = linea;