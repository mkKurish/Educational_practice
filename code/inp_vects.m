function outputArg = inp_vects(content)
% Функция для ввода вектора значений с последующей конвертацией в вектор
% в представлении MatLab.
%
% Результат - вектор значений

while true
    outputArg = input(content, 's'); % Ввод строки - набора значений ч/з запятую
    try
        outputArg = eval(['[', outputArg, ']']); % Попытка получить из строки вектор
        if (isnumeric(outputArg)) % Если введен вектор не из чисел, то ввод выполнится заново
            break;
        end
    catch
    end
    disp('Некорректный ввод.'); % Обработка ошибки
end