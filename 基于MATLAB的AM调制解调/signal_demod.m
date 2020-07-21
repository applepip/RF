Dam=demod(Uam,fc,Fs,'am');  % 对AM调制信号进行解调 
C4=fft(Dam);                % 对AM解调信号进行傅里叶变换  
wqe=abs(C4);                % 求模
figure(4)
subplot(2,1,1); plot(t,Dam); grid on; title('AM解调信号波形');
axis([0 0.5 0 2]);
subplot(2,1,2); plot(f(1:N/2),wqe(1:N/2)),grid; title('AM解调信号频谱');