%este program sirve para calibrar el dispostivo.
%La idea es a aprtir del comportamiento discreto del punto ante la camara
%estimar una ecuacion
%este es un borrador interactivo de la funcion calibrator solo será usada
%de prueba y despues debe ser remplazada por la columna del programa del
%scanner
vid = videoinput('winvideo', 1, 'RGB24_1280x960');
src = getselectedsource(vid);
% Configure the object for manual trigger mode.
triggerconfig(vid, 'manual');
% Now that the device is configured for manual triggering, call START.
% This will cause the device to send data back to MATLAB, but will not log
% frames to memory at this point.
start(vid)

% Measure the time to acquire 20 frames.
centros = ones(2,21);
distancia = ones(1,21);
for i = 1:21
    distancia(i) = input('Distacia del centro');
    snapshot = getsnapshot(vid);
    snapshot = gris(snapshot,2);
    centro = cpx(snapshot,55);
    centros(:,i) = centro; 
end
% Call the STOP function to stop the device.
stop(vid)
%delete and clear the work space
delete(vid)
clear vid
clear src
hold on
%polinomio a usar
a = polyfit(distancia,centros(2,:),2);% caculamos el vector opecaión /matriz de distancias/ puntos en el eje de interes/ grado
%Graficos
b = 20:0.02:29;
plot(20:1:29,centros(1,:),'red')
plot(20:1:29,centros(2,:),'green')
plot(b,(b.*b).*a(1)+b.*a(2)+a(3))
legend('X','Y')
title('Distancia en funcion delcentro de pixeles, umbral 55')
xlabel('Distancia')
ylabel('pixel marcado')