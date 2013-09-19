function w=cpxk(r,u)
    %function argout=convolution5(argin1, argin2)
img=double(r);%lo hace operable
[m, n]=size(img);%dimensiones
%[p q]=size(argin2);
b=zeros(m,n);
cont=0;
ac=[0 0];
for neu=1:1:(m)
    for neu2=1:1:(n)
        a=img(neu,neu2);
        %a=a.*argin2;
        if a<u
            a=0;
        elseif a>=u
            cont=cont+1;
            a=255;
            ac=ac+[neu2,neu];
        end
        %b(neu,neu2)=a;
    end
end
%b=uint8(b);
%imshow(b)
promedio =fix((1/cont)*ac);
%disp(cont);
w=promedio;
    