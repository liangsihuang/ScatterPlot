clc;
clear;

%��ȡ����
[fileID,message]=fopen('ShearPlasticity.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);

displacement=data{1};
L=500;
Mp=117.5E6;
M=data{2}.*L./Mp;

%��ͼ
plot(displacement,M);

% ��������
grid on
% 
% 
% % % ���������ʾ��Χ
% % axis([0 3 0 4])
% 
% 
% xlabel('���λ��');
% ylabel('���������');
% title('S1����');
% 
%�Ҽ���ֵ�������
% [peak,location]=findpeaks(M);
% hold on; %plot��plot֮��Ҫholdס
% peak_x=displacement(location);
% peak_y=peak;
% plot(peak_x,peak_y,'ro');

%��ע����ֵ�����굽ͼ�У�����һֱ���ϣ�û�м���ֵ���Լ���һ��
% s=['(',num2str(peak_x),',',num2str(peak_y),')'];

% text(peak_x,peak_y,s);
% text(0,0,s);