clc;clear;close all

LGF = [697 770 852 941];
HGF = [1209 1336 1477 1633];

s = input('Enter phone number: ','s');
n = length(s);

for i = 1:n
    switch s(i)
         case 'A', row = 1; col = 4;
         case 'B', row = 2; col = 4;
         case 'C', row = 3; col = 4;
         case 'D', row = 4; col = 4;
         case '*', row = 4; col = 1;
         case '0', row = 4; col = 2;
         case '#', row = 4; col = 3;
        otherwise, row = ceil((s(i)-'0')/3); col = mod(s(i)-'0'-1,3)+1;
    end
    
    Fs = 16000;
    t = 0:1/Fs:0.25; %play for 0.25s (250ms)
    y1 = sin(2*pi*LGF(row)*t);
    y2 = sin(2*pi*HGF(col)*t);
    y = (y1 + y2);
    
    soundsc(y,Fs)
    pause(0.35) %pause for 0.35s (350ms)

end
