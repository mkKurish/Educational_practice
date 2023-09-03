# Educational_practice

2-nd semester educational practice

The program has an intuitive text interface

The project consists of three modules, each module solves one of the tasks below:

- Solving linear equations
- Interpolation
- Numerical integration

---

### Linear equations

> ##### **Method:** Newton 's method

##### Steps:

1. Getting a function
2. Plotting the function
3. Setting the boundaries of the root search
4. Setting the search error
5. Solving
	- Using the developed function
		* Determination of the 1st and 2nd derivative at point a
		* Checking for monotony and convexity
		* Cyclic root search until the required accuracy is achived
	- Using the built-in function
6. Output of the results

---

### Interpolation

> ##### **Method:** Lagrange interpolation polynomial

##### Steps:

1. Getting a vector of arguments
2. Getting a vector of values
3. Solving
	- Using the developed function
		* Initialization of the vector of coefficients of the polynomial
		* Summation of products of values (y(i)) with corresponding products of fractions (lix(x,i))
		* Converting a vector of coefficients to function handle
4. Search and output to the console values for the desired points
5. Plotting the function
	- Calculated by the developed function
6. Solving
	- Using the built-in functions
7. Search and output to the console values for the desired points
8. Plotting the function
	- Calculated by the built-in function

---

### Integration

> ##### **Method:** trapezoid method

##### Steps:

1. Getting the integrand funtion
2. Setting the lower and upper limits of integration
3. Setting the error of calculating the integral
4. Solving
	- Using the developed function
		* Setting the integration step
		* Cyclic calculation until the desired accuracy is achieved
		* Construction of grid nodes on a segment with a given step
		* Search for the second derivative for the following error calculation
		* Initializing of a variable storing the sum of trapezoid  areas
		* Calculation the trapezoid area and adding this value to the 'area' variable
		* Searching the largest second derivative
		* Calculation of the error of integral calculations
		* Checking for sufficient accuracy
		* Decreasing the integration step, according to the Runge rule
5. Output of the result and the actual error for the developed function
6. Solving
	- Using built-in function
7. Output of result calculated by the built-in function

---

### Author information

```
>> info_prog
Программа 'MyLib'
Назначение: автоматизация математических задач
(Решение нелинейных уравнений, интерполяция, интегрирование)
- - - - - - - - - - - - - - -
В программе используются следующие методы решений:
Нелинейные уравнения - метод Ньютона
Интерполяция - метод Лагранжа
Интегрирование - метод трапеций
- - - - - - - - - - - - - - -
Последняя редакция: 21.04.2023
- - - - - - - - - - - - - - -
Разработчик:
Куриш Михаил Викторович
ГУАП, гр №4232
kypten.wave@gmail.com
- - - - - - - - - - - - - - -
```