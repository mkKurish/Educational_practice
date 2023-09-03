function plnm = mnoj(lft, rght)
% Функция, реализующая умножение полиномов, представленных в виде
% векторов коэффициентов (разряды келичиваются слева-направо).
%
% lft - вектор коэфф. первого полинома
% rght - вектор коэфф. второго полинома
%
% Результат - вектор коэффициентов полинома

plnm = zeros(1, length(lft)+length(rght)-1); % Создание вектора коэффициентов итогового полинома
i = 1;
while (i <= length(rght))
    j = 1;
    while (j <= length(lft))
        plnm(i+j-1) = plnm(i+j-1) + lft(j) * rght(i); % Заполнение итогового вектора коэффициентов согласно правилам математики
        j = j + 1;
    end
    i = i + 1;
end
end