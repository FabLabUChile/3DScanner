function w=centopx(r,u,poly)
    %function argout=cpx(argin1, argin2)
img=double(r);%lo hace operable
[m, n]=size(img);%dimensiones
%[p q]=size(argin2);
cont=0;
ac=[0 0];
for neu2=1:1:(n)
    my = floor(poly(3)*n+poly(4));
    for neu=(poly-20):1:(poly+20)
        a=img(neu,neu2);
        %a=a.*argin2;
        if a<u
            a=0;
        elseif a>=u
            cont=cont+1;
            a=255;
            ac=ac+[neu2,neu];
        end
    end
end
promedio =fix((1/cont)*ac);
disp(cont);
w=promedio;
    