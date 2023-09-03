function output = inaccuracy(content)
% Функция для ввода погрешности.
%
% Результат - числовое значение погрешности

output = int_input(content);
while output <= 0 % Погрешность - строго положительное значение
    disp('Погрешность должна быть строго положительным значением!');
    output = int_input(content);
end
end