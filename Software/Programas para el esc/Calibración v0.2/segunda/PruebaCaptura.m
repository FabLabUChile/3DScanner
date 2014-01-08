vid = videoinput('winvideo', 1, 'RGB24_1280x960');
src = getselectedsource(vid);
% Configure the object for manual trigger mode.
triggerconfig(vid, 'manual');
% Now that the device is configured for manual triggering, call START.
% This will cause the device to send data back to MATLAB, but will not log
% frames to memory at this point.
start(vid)

% Measure the time to acquire 20 frames.
for i = 1:21
    da(i) = input('Distacia del centro');
    snapshot = getsnapshot(vid);
end
% Call the STOP function to stop the device.
stop(vid)