k=awgn(Uam,1);  %加大噪声，信噪比为1
pp=fft(k,960);  %进行傅里叶变换
zs=abs(pp);     %求模
figure(6)
subplot(2,1,1);plot(t,k);
title('加大噪声后得到AM信号时域波形');%加大噪声后得到AM信号时域波形
subplot(2,1,2);plot(f(1:N/2),zs(1:N/2));
title('加大噪声后得到AM信号频域波形'); %加大噪声后得到AM信号频域波形

qaz=demod(k,fc,Fs,'am'); %加大噪声后解调
figure(7)
subplot(2,1,1);plot(t,qaz);title('加大噪声后解调得到信号时域波形'); %加大噪声后解调得到信号时域波形
wsx=fft(qaz,960);     %进行傅里叶变换
edc=abs(wsx);         %求模
subplot(2,1,2);
plot(f(1:N/2),edc(1:N/2));title('加大噪声后解调得到信号频域波形');  %加大噪声后解调得到信号频域波形

% 可以看出解调后噪声依然对信号有影响，也出现了失真;噪声对频率的影响很大，出现了失真，但是中心频率还是没有变。

