clc;
clear;

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

% ��������
grid on


% % ���������ʾ��Χ
% axis([0 3 0 4])


xlabel('���λ��');
ylabel('���������');
title('S4����');

%�Ҽ���ֵ�������
[peak,location]=findpeaks(moment);
hold on; %plot��plot֮��Ҫholdס
peak_x=displacement(location);
peak_y=peak;
plot(peak_x,peak_y,'ro');

%��ע����ֵ�����굽ͼ��
s=['(',num2str(peak_x),',',num2str(peak_y),')'];
text(peak_x,peak_y+0.05,s);