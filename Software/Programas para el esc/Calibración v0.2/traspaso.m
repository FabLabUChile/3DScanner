function argout = traspaso(o, mat, text)
%o el numero de puntos por corte y mat el vector de
%distancias obtenido y text el archivo a cubrir
for i=1:1:o
    pri = [mat(i,1)*cos(mat(i,2)) mat(i,1)*sin(mat(i,2)) mat(i,3)];
    fprintf(text,'%5.8f %5.8f %5.8f %5.8f \n',pri);  
end
argout=1;