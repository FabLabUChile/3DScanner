function mat=escanear(z,o,poly1,poly2)
%z el plano/ o el numero de puntos en el plano / poli1 el polinomio de
%calculo
vid = videoinput('winvideo', 1, 'RGB24_1280x720');
src = getselectedsource(vid);
% Configure the object for manual trigger mode.
triggerconfig(vid, 'manual');
% Now that the device is configured for manual triggering, call START.
% This will cause the device to send data back to MATLAB, but will not log
% frames to memory at this point.
start(vid)
centro = [0 0];
linea = zeros(o,3);
for i=1:1:o
% Measure the time to acquire 20 frames.
    linea(i,1) = z;
    linea(i,2:3) = distanciaop(poly1,poly2);
    %6.2389e-09*centro(1)^3-2.122e-05*centro(1)^2+0.0326*centro(1)-10.969
end
    %imshow(snapshot)
% Call the STOP function to stop the device.
stop(vid)
mat = linea;