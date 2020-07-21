
Uam=modulate(mes,fc,Fs,'am');  %  信号调幅（AM）
C3=fft(Uam);                   %  对AM已调信号进行傅里叶变换
asd=abs(C3);                   %  %求模

figure(3)
subplot(2,1,1);plot(t,Uam); grid on; title('AM已调信号波形'); 
subplot(2,1,2);plot(f(1:N/2),asd(1:N/2)),grid; title('AM已调信号频谱'); 