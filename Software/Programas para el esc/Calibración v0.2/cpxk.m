function argout =cpxk(r,u)
img=double(r);%lo hace operable
[m, n]=size(img);%dimensiones
%[p q]=size(argin2);
b=zeros(m,n);
cont=0;
ac=[0 0];
for neu=1:1:(m)
    for neu2=1:1:(n)
        a=img(neu,neu2);
        if a>=u
            cont=cont+1;
            ac=ac+[neu2,neu];
            %img(neu,neu2)=255;
        %else
           % img(neu,neu2)=0;
        end
    end
end
%img=uint8(img);
%imshow(img)
promedio =(1/cont)*ac;
argout = promedio;