close all;
disp('f = 5*exp(-3*x).*sin(1*x+0.7)-1'); % Вывод вида демо-функции для удобства пользователя
f = @(x)5*exp(-3*x).*sin(1*x+0.7)-1; % Задание демо-функции
disp('--------------------------------');

% Границы построения графика
a_graph = -2;
b_graph = 2;
    
t = a_graph:(b_graph-a_graph)/1000:b_graph;
y = f(t);
plot(t, y, t, zeros(size(t))); % Строим график
title('График функции в указанных границах');
xlabel('x');
ylabel('y');
xlim([a_graph-(b_graph-a_graph)/50, b_graph+(b_graph-a_graph)/50]); % Ограничиваем график для удобства использования
if abs(mymax(y)-mymin(y)) < 40
        ylim([mymin(y)-(mymax(y)-mymin(y))/20, mymax(y)+(mymax(y)-mymin(y))/20]);
else
	ylim([-20, 20]);
end
drawnow;

% Границы поиска корня
left_t = 0;
right_t = 1;
disp('Границы поиска корня:');
disp(left_t);
disp(right_t);

disp('--------------------------------');
disp('Погрешность: 0.001');
epsilon = 0.001; % Погрешность поиска

res = solve_1_Newton(f, left_t, right_t, epsilon); % Вызов функции, реализующей алгоритм ньютона
opt = optimset('TolX', epsilon); % Задание точности для встроенной функции
mlb_res = fzero(f, [left_t, right_t], opt); % Вызов встроенной функции, близкой к алгоритму ньютона

disp('--------------------------------');
disp('Результат:');
disp(res); % Вывод результата
disp('Результат через встроенную функцию:');
disp(mlb_res); % Вывод результата, полученного с помощью встроенной функции

