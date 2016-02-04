function a=getmap(b)
%
% reads colourmap number b from my collection, and converts to matlab form
% 
% can then be loaded with colormap(a)
%
btrans=[1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,21,22,23,24,25,26,27,28,29,37,38,39,43,44,45,46,47,48,49];
fid=fopen('coloursave.dat');
aa=fread(fid,[768,37],'uint8');
fclose(fid);
aa=double(aa)./256.;
aa=reshape(aa,256,3,37);
b=uint16(b);
bb=find(btrans == b);
s=size(bb);
if (s(2) ~= 0);
    a=aa(:,:,bb);
else
    a=aa(:,:,37);
    fprintf('This map does not exist. Using number 37')
end
end
