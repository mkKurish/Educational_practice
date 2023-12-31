function flg = myunique(arr)
% Функция, проверяющая вектор или строку на уникальность.
%
% arr - вектор или строка
%
% Результат - логическое значение

second = zeros(length(arr)); % Создание вспомогательного вектора
second(1) = arr(1); % Первый элемент сам по себе уникален в сравнении с пустым множеством
i = 2; % Начиная со второго элемента будет выполняться проверка уникальности
flg = true; % Задаем начальное значение (флаг)
while i <= length(arr)
    if mycontains(second(1:i-1), arr(i)) % Если во вспомогательном векторе уже есть итерируемый элемент, то он не уникален
        flg = false; % Меняем флаг, т.к. вектор не уникален
        break; % Завершаем выполнение функции
    end
    second(i) = arr(i); % Добавляем элемент в вспомогательный вектор
    i = i + 1;
end
end