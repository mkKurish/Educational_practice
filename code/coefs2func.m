function f = coefs2func(coefs)
% Функция, формирующая Function Handle из вектора коэффициентов полинома.
%
% Коэффициенты распологаются в порядке от коэфф. младшего разряда (слева)
% до старшего (справа).
%
% Результат - функция, т.е. Function Handle

s = ''; % Создание строки, в которую будет формироваться функция из вектора коэффициентов
i = 1;
while (i <= length(coefs)) % Обработка коэффициентов
    if (coefs(i) > 0)
        if (coefs(i) == 1)
            s = strcat('+x.^', num2str(i-1, 10), s);
        else
            s = strcat('+', num2str(coefs(i), 10), '*x.^', num2str(i-1, 10), s);
        end
    else
        if (coefs(i) < 0)
            if (coefs(i) == -1)
                s = strcat('-x.^', num2str(i-1, 10), s);
            else
                s = strcat(num2str(coefs(i), 10), '*x.^', num2str(i-1, 10), s);
            end
        end
    end
    i = i + 1;
end

f = eval(strcat('@(x)', s)); % Преобразование полученной строки в Function Handle
end