vid = videoinput('winvideo', 1, 'RGB24_1280x720');
src = getselectedsource(vid);
% Configure the object for manual trigger mode.
triggerconfig(vid, 'manual');
% Now that the device is configured for manual triggering, call START.
% This will cause the device to send data back to MATLAB, but will not log
% frames to memory at this point.
start(vid)

% Measure the time to acquire 20 frames.
    %da(i) = input('Distacia del centro');
    snapshot = getsnapshot(vid);
    snapshot = gris(snapshot,2);
    centro = cpxk(snapshot,255)
    6.2389e-09*centro(1)^3-2.122e-05*centro(1)^2+0.0326*centro(1)-10.969
    %imshow(snapshot)
% Call the STOP function to stop the device.
stop(vid)