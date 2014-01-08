function mat=test()
a=0
for i=1:1:1000
% Measure the time to acquire 20 frames.
    da(i) = input('Capturar');
    snapshot = getsnapshot(vid);
    snapshot = gris(snapshot,2);
    centro(i,2:3) = cpxk(snapshot,255);
    disp(centro(i,:))
    %6.2389e-09*centro(1)^3-2.122e-05*centro(1)^2+0.0326*centro(1)-10.969
end
    %imshow(snapshot)
% Call the STOP function to stop the device.
stop(vid)
mat(1,:) = polyfit(centro(:,1),centro(:,2),3);%rfx
mat(2,:) = polyfit(centro(:,1),centro(:,3),3);%rfy
mat(3,:) = polyfit(centro(:,2),centro(:,3),3);%yfx