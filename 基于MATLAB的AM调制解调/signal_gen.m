% AM�źŲ���

A0 = 1;   %�ز��ź����
A1 = 1;   %�����ź����

fc = 120; %�ز��ź�Ƶ��
fm = 30;  %�����ź�Ƶ��



Fs=960;   %����Ƶ��
N=960;    %������
n=0:N-1;t=n/Fs;  %ʱ������

f=n*Fs/N;  %Ƶ��

w0=2*pi*fc;
w1=2*pi*fm;

Uc=A0*cos(w0*t);     %�ز��ź� 
C1=fft(Uc);          %���ز��źŽ��и���Ҷ�任 
cxf=abs(C1);         %��ģ 

figure(1); 
subplot(2,1,1); plot(t,Uc); title('�ز��źŲ���'); axis([0 0.1 -1 1]);
subplot(2,1,2); plot(f(1:N/2),cxf(1:N/2));title('�ز��ź�Ƶ��');

mes=1+A1*cos(w1*t);   %�����ź� 
C2=fft(mes);          % �Ե����źŽ��и���Ҷ�任 
zxc=abs(C2);          %��ģ
figure(2)
subplot(2,1,1); plot(t,mes); title('�����ź�');axis([0 0.5 0 2]);  
subplot(2,1,2);  plot(f(1:N/2),zxc(1:N/2)); title('�����ź�Ƶ��'); 