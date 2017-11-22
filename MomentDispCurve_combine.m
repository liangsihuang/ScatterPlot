clc;
clear;

%读取数据
[fileID,message]=fopen('S1_load_disp.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=29079840;
moment=data{2}.*(-1).*L./Mp;

%作图
plot(displacement,moment);

% 开启网格
grid on


% % 坐标轴的显示范围
% axis([0 3 0 4])


xlabel('相对位移');
ylabel('无量纲弯矩');
title('S1-S4曲线');

% % % % % % % S2

%读取数据
[fileID,message]=fopen('S2_load_disp.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=84126240;
moment=data{2}.*(-1).*L./Mp;

%作图
hold on;
plot(displacement,moment);


% % % % % % % S3


%读取数据
[fileID,message]=fopen('S3_load_disp.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=102352840;
moment=data{2}.*(-1).*L./Mp;

%作图
plot(displacement,moment);


% % % % % % S4


%读取数据
[fileID,message]=fopen('S4_load_disp.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
L=500;
displacement=data{1}.*(-1)./L;
Mp=144164040;
moment=data{2}.*(-1).*L./Mp;

%作图
plot(displacement,moment);

% 标注四条曲线
text(0.01,1.1,'S1');
text(0.01,0.95,'S2');
text(0.01,0.8,'S3');
text(0.01,0.7,'S4');


