%%%%%%%%%%%%% cellular automaton
clear
clc
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load data;%lunmu/kaiken/guomu
data = guomu;
T = 30;
Sit = 3;% number of situation
range = [0.3918, 0.7629];
lambda = [1 1];
human = 0.001 * lambda(1);
plant = 0.0005 * lambda(2);
weight = [0.01 - human + plant, 0.92 - human + plant];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[area, Data] = Create(data);
Draw_area(area, range);
figure;
sta_data = zeros(T, Sit);
for i = 1 : T
    area = Change_area(area, weight);
    Draw_area(area, range);
    drawnow;
    sta_data(i, :) = Statistics(area, Sit, range);
end
figure;
x = 1 : T;
hold on;
plot(x, sta_data(:,1), 'Color', [0.545, 0.412, 0.078], 'LineWidth', 2);
plot(x, sta_data(:,2), 'Color', [0.596, 1, 0.596], 'LineWidth', 2) ;
plot(x, sta_data(:,3), 'Color', [0.133, 0.545, 0.133], 'LineWidth', 2);
xlabel('时间');
ylabel('数量');
legend('退化','半退化','非退化');
title('三种趋势图');
grid on;