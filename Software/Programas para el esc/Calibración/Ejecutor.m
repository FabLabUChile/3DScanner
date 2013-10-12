%a = arduino('COM5')
%a.pinMode(13,'output')
control = input('(1) Calibrar, (2) Escanear');
if control == 1
    [fi,texto]=fopen('cab.txt','w');
    a.digitalWrite(13,1)
    cte=calibrar();
    fprintf(fi,'%5.8f %5.8f %5.8f %5.8f \r\n',cte);
    st = fclose(fi);
    control = 0;
    a.delete();
elseif control == 2
    [fi,texto]=fopen('cab.txt','r');
    dat = fscanf(fi,'%f %f %f %f',[4,3]);
    mat = dat';
    st = fclose(fi);
end

    

