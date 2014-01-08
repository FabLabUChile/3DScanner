a = arduino('COM5');
a.pinMode(13,'output')
a.digitalWrite(13,0)
a.stepperSpeed(1,5)
a.stepperSpeed(2,5)
%z el plano/ o el numero de puntos en el plano / poli1 el polinomio de
%calculo
vid = videoinput('winvideo', 1, 'RGB24_1280x960');
src = getselectedsource(vid);
% Configure the object for manual trigger mode.
triggerconfig(vid, 'manual');
% Now that the device is configured for manual triggering, call START.
% This will cause the device to send data back to MATLAB, but will not log
% frames to memory at this point.
start(vid)
control = 0;
while control == 0
    control = input('(1) Calibrar, (2) Escanear, (3)salir');
    if control == 1
        [fi,texto]=fopen('cab.txt','w');
        cte=calibrar(vid);
        fprintf(fi,'%5.8f %5.8f %5.8f %5.8f \r\n',cte);
        st = fclose(fi);
        control = 0;
        a.delete();
    elseif control == 2
        [fi,texto]=fopen('cab.txt','r');
        dat = fscanf(fi,'%f %f %f %f',[4,3]);
        mat = dat'
        st = fclose(fi);
        o = input('puntos por plano');
        [fa,text]=fopen('nuevo.txt','w');
        z = 0;
        alfa= 2.54/2800;
        while true
            linea = plano(vid,a,alfa,z,o,mat(1,:),mat(3,:));
            if sum(linea)== 0
                break
            end
            num = traspaso(o, linea,fa);
            z = z+1;
            a.stepperStep(1,'backward','double',100);
        end    
    end
end
stop(vid)
a.detete()

