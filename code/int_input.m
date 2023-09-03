function outputArg = int_input(content)
% Функция для ввода численных значений с клавиатуры.
%
% Результат - числовое значение

outputArg = input(content, 's');
outputArg = replace(outputArg, ',', '.');
outputArg = str2double(outputArg);
while isnan(outputArg) % Проверка на правильность ввода
    outputArg = input('Ошибка!\nПовторите ввод: ', 's');
    outputArg = replace(outputArg, ',', '.');
    outputArg = str2double(outputArg);
end
end