function argout = traspaso(o, mat, text)
%con z altura del plano(incluido en mat), o el numero de puntos por corte y mat el vector de
%distancias obtenido y text el archivo a cubrir
for i=1:1:o
    pri = [mat(i,1)*cos(mat(i,2)) mat(i,1)*sen(mat(i,2)) mat(i,3)];
    fprintf(text(1),'%5.8f %5.8f %5.8f %5.8f \r\n',pri);
    
end
argout=1;