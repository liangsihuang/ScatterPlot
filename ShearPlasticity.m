clc;
clear;

%读取数据
[fileID,message]=fopen('ShearPlasticity.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);

displacement=data{1};
L=500;
Mp=117.5E6;
M=data{2}.*L./Mp;

%作图
plot(displacement,M);

% 开启网格
grid on
% 
% 
% % % 坐标轴的显示范围
% % axis([0 3 0 4])
% 
% 
% xlabel('相对位移');
% ylabel('无量纲弯矩');
% title('S1曲线');
% 
%找极大值点的坐标
% [peak,location]=findpeaks(M);
% hold on; %plot和plot之间要hold住
% peak_x=displacement(location);
% peak_y=peak;
% plot(peak_x,peak_y,'ro');

%标注极大值的坐标到图中，曲线一直向上，没有极大值，自己定一个
% s=['(',num2str(peak_x),',',num2str(peak_y),')'];

% text(peak_x,peak_y,s);
% text(0,0,s);