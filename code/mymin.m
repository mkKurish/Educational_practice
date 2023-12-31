function answ = mymin(arr)
% Функция, реализующая поиск минимального элемента вектора.
%
% arr - вектор чисел
%
% Результат - число

if length(arr) >= 1
    answ = arr(1); % Взятие в качестве начального значения первого элемента вектора
else
    answ = 0;
end
i = 2;
while i <= length(arr)
    if arr(i) < answ % Если очередной элемент меньше найденного, найденный заменяется на него
        answ = arr(i);
    end
    i = i + 1;
end