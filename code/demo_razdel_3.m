close all;
disp('Подынтегральная функция: 1./sqrt(0.161.*x.*x+1.7)');
f = @(x) 1 ./ sqrt(0.161 .* x .* x + 1.7); % Задание подынтегральной функции
disp('Границы интегрирования:');
disp('a = 0.4');
disp('b = 1.4');
a = 0.4; % Нижняя граница интегрирования
b = 1.4; % Верхняя граница интегрирования
disp('Заданная максимальная погрешность:');
disp('eps = 0.0001');
eps = 0.0001; % Погрешность вычисления интеграла
[area, R] = integr_tr(f, a, b, eps); % Вычисление интеграла с учетом полученной погрешности R
disp('---------------------------------------------------------');
disp('Вычисленное по построенному алгоритму значение интеграла:')
disp(area); % Вывод результата
disp('Погрешность:')
disp(R); % Вывод погрешности
x = a:(b-a)/100:b;
y = f(x);
plot(x, y);
title('График подынтегральной функции в границах интегрирования');
xlabel('x');
ylabel('y');
drawnow;
area = trapz(x, f(x)); % Вычисление интеграла с помощью встроенной функции
disp('Вычисленное с помощью встроенной функции значение интеграла:')
disp(area); % Вывод результата