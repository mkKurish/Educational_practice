close all;
disp('f = 5*exp(-3*x).*sin(1*x+0.7)-1'); % ����� ���� ����-������� ��� �������� ������������
f = @(x)5*exp(-3*x).*sin(1*x+0.7)-1; % ������� ����-�������
disp('--------------------------------');

% ������� ���������� �������
a_graph = -2;
b_graph = 2;
    
t = a_graph:(b_graph-a_graph)/1000:b_graph;
y = f(t);
plot(t, y, t, zeros(size(t))); % ������ ������
title('������ ������� � ��������� ��������');
xlabel('x');
ylabel('y');
xlim([a_graph-(b_graph-a_graph)/50, b_graph+(b_graph-a_graph)/50]); % ������������ ������ ��� �������� �������������
if abs(mymax(y)-mymin(y)) < 40
        ylim([mymin(y)-(mymax(y)-mymin(y))/20, mymax(y)+(mymax(y)-mymin(y))/20]);
else
	ylim([-20, 20]);
end
drawnow;

% ������� ������ �����
left_t = 0;
right_t = 1;
disp('������� ������ �����:');
disp(left_t);
disp(right_t);

disp('--------------------------------');
disp('�����������: 0.001');
epsilon = 0.001; % ����������� ������

res = solve_1_Newton(f, left_t, right_t, epsilon); % ����� �������, ����������� �������� �������
opt = optimset('TolX', epsilon); % ������� �������� ��� ���������� �������
mlb_res = fzero(f, [left_t, right_t], opt); % ����� ���������� �������, ������� � ��������� �������

disp('--------------------------------');
disp('���������:');
disp(res); % ����� ����������
disp('��������� ����� ���������� �������:');
disp(mlb_res); % ����� ����������, ����������� � ������� ���������� �������

