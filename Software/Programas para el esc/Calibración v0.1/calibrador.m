% version alfa es la llamada Gral
lin = ones(2,10)
for vec = 1:1:10
    m = imread(input('Archivo a cargar'));%selección de archivo
    m = gris(m);%sacamos la parte di interes
    p = cpx(m,55) %centro de px
    lin(:,vec) = p% dif centro de camara
end
hold on
a = polyfit(20:1:29,lin(2,:),2)
b=20:0.02:29
plot(20:1:29,lin(1,:),'red')
plot(20:1:29,lin(2,:),'green')
plot(b,(b.*b).*a(1)+b.*a(2)+a(3))
legend('X','Y')
title('Distancia en funcion delcentro de pixeles, umbral 55')
xlabel('Distancia')
ylabel('pixel marcado')


     