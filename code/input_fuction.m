function output = input_fuction()
% Функция для ввода пользовательской математической функции.
%
% Результат - анонимная функция пользовательской математической функции

while true
    f = input('Введите функцию с аргументом x: ', 's'); % Ввод функции
    f = strrep(f,'.*','*');
    f = strrep(f,'./','/');
    f = strrep(f,'.^','^');
    f = strrep(f,'*','.*');
    f = strrep(f,'/','./');
    f = strrep(f,'^','.^');
    flag = true;
    while flag
        try 
            output = eval(['@(x)', f]); % Формирование function handle из строки
            a = output(2); % Проверка работоспособности функции
            flag = false;
        catch
            disp('Введено некорректное выражение!');
            f = input('Введите функцию с аргументом x: ', 's'); % Ввод функции
            flag = true;
        end
    end
    if mycontains(f, 'x') % Функция, в которой нет переменной, не может быть нелинейной
        output = eval(['@(x)', f]); % Формирование function handle из строки
        break;
    else
        disp('Функция должна содержать переменную x!');
    end
end
end