function outputArg = int_input(content)
% ������� ��� ����� ��������� �������� � ����������.
%
% ��������� - �������� ��������

outputArg = input(content, 's');
outputArg = replace(outputArg, ',', '.');
outputArg = str2double(outputArg);
while isnan(outputArg) % �������� �� ������������ �����
    outputArg = input('������!\n��������� ����: ', 's');
    outputArg = replace(outputArg, ',', '.');
    outputArg = str2double(outputArg);
end
end