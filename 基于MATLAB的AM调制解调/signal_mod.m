
Uam=modulate(mes,fc,Fs,'am');  %  �źŵ�����AM��
C3=fft(Uam);                   %  ��AM�ѵ��źŽ��и���Ҷ�任
asd=abs(C3);                   %  %��ģ

figure(3)
subplot(2,1,1);plot(t,Uam); grid on; title('AM�ѵ��źŲ���'); 
subplot(2,1,2);plot(f(1:N/2),asd(1:N/2)),grid; title('AM�ѵ��ź�Ƶ��'); 