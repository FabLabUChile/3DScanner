function mat=calibrar(vid)
centro=zeros(33,2);
centro(:,1)=-8:0.5:8;
for i=1:1:33
    da(i) = input('Capturar');
    snapshot = getsnapshot(vid);
    snapshot = gris(snapshot,2);
    centro(i,2:3) = cpxk(snapshot,255);
    disp(centro(i,:))
end
hold on
plot(centro(:,1),centro(:,2))
plot(centro(:,1),centro(:,3))
mat(1,:) = polyfit(centro(:,1),centro(:,2),3)%rfx
mat(2,:) = polyfit(centro(:,1),centro(:,3),3)%rfy
mat(3,:) = polyfit(centro(:,2),centro(:,3),3)%yfx