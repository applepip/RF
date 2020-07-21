% AM信号产生

A0 = 1;   %载波信号振幅
A1 = 1;   %调制信号振幅

fc = 120; %载波信号频率
fm = 30;  %调制信号频率



Fs=960;   %采样频率
N=960;    %采样点
n=0:N-1;t=n/Fs;  %时间序列

f=n*Fs/N;  %频率

w0=2*pi*fc;
w1=2*pi*fm;

Uc=A0*cos(w0*t);     %载波信号 
C1=fft(Uc);          %对载波信号进行傅里叶变换 
cxf=abs(C1);         %求模 

figure(1); 
subplot(2,1,1); plot(t,Uc); title('载波信号波形'); axis([0 0.1 -1 1]);
subplot(2,1,2); plot(f(1:N/2),cxf(1:N/2));title('载波信号频谱');

mes=1+A1*cos(w1*t);   %调制信号 
C2=fft(mes);          % 对调制信号进行傅里叶变换 
zxc=abs(C2);          %求模
figure(2)
subplot(2,1,1); plot(t,mes); title('调制信号');axis([0 0.5 0 2]);  
subplot(2,1,2);  plot(f(1:N/2),zxc(1:N/2)); title('调制信号频谱'); 