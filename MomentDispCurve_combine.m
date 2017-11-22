clc;
clear;

%��ȡ����
[fileID,message]=fopen('S1_load_disp.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=29079840;
moment=data{2}.*(-1).*L./Mp;

%��ͼ
plot(displacement,moment);

% ��������
grid on


% % ���������ʾ��Χ
% axis([0 3 0 4])


xlabel('���λ��');
ylabel('���������');
title('S1-S4����');

% % % % % % % S2

%��ȡ����
[fileID,message]=fopen('S2_load_disp.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=84126240;
moment=data{2}.*(-1).*L./Mp;

%��ͼ
hold on;
plot(displacement,moment);


% % % % % % % S3


%��ȡ����
[fileID,message]=fopen('S3_load_disp.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=102352840;
moment=data{2}.*(-1).*L./Mp;

%��ͼ
plot(displacement,moment);


% % % % % % S4


%��ȡ����
[fileID,message]=fopen('S4_load_disp.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=144164040;
moment=data{2}.*(-1).*L./Mp;

%��ͼ
plot(displacement,moment);

% ��ע��������
text(0.01,1.1,'S1');
text(0.01,0.95,'S2');
text(0.01,0.8,'S3');
text(0.01,0.7,'S4');


