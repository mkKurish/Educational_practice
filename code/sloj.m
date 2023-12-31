function plnm = sloj(lft, rght)
% Функция, реализующая сложение полиномов, представленных в виде
% векторов коэффициентов (разряды келичиваются слева-направо).
%
% lft - вектор коэфф. первого полинома
% rght - вектор коэфф. второго полинома
%
% Результат - вектор коэффициентов полинома

plnm = zeros(1, mymax([length(lft), length(rght)])); % Создание вектора коэффициентов итогового полинома
i = 1;
while (i <= length(lft))
    plnm(i) = plnm(i) + lft(i); % Внесение в итоговый вектор значений первого вектора
    i = i + 1;
end
i = 1;
while (i <= length(rght))
    plnm(i) = plnm(i) + rght(i); % Сложение с имеющимися значениями итогового вектора значений второго вектора
    i = i + 1;
end
end