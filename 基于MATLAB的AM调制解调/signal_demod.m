Dam=demod(Uam,fc,Fs,'am');  % ��AM�����źŽ��н�� 
C4=fft(Dam);                % ��AM����źŽ��и���Ҷ�任  
wqe=abs(C4);                % ��ģ
figure(4)
subplot(2,1,1); plot(t,Dam); grid on; title('AM����źŲ���');
axis([0 0.5 0 2]);
subplot(2,1,2); plot(f(1:N/2),wqe(1:N/2)),grid; title('AM����ź�Ƶ��');