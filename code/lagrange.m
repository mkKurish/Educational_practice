function f = lagrange(x, y)
% Функция, реализующая построение функции по
% методу интерполяционного полинома Лагранжа.
%
% x - вектор аргументов
% y - вектор значений для соответствующих аргументов
%
% Результат - function handle, функция

i = 1;
coefs = []; % Создание вектора коэффициентов полинома
while (i <= length(y))
    coefs = sloj(coefs, mnoj(lix(x,i), y(i))); % Суммирование произведений значений (y(i)) с соответствующими произведениями дробей (lix(x,i))
    i = i + 1;
end
f = coefs2func(coefs); % Преобразование вектора коэффициентов в function handle
end