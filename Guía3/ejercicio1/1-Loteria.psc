Proceso Loteria
	Definir num, mayor, menor, par, impar, acum, i Como Entero;
	Definir prom Como Real;
	// Ingresar el primer número
	Escribir 'Ingrese el primer número:';
	Leer num;
	// Iniciar variables
	mayor <- num;
	menor <- num;
	Si num % 2 == 0 Entonces
		par <- 1;
		impar <- 0;
		acum <- 0;
	SiNo
		par <- 0;
		impar <- 1;
		acum <- num;
	FinSi
	// Iteración para los 20 números
	Para i <- 2 Hasta 20 Hacer
		Escribir 'Ingrese el ', i, 'º número:';
		Leer num;
		// Verificación par e impar
		Si num % 2 == 0 Entonces
			par <- par + 1;
		SiNo
			impar <- impar + 1;
			acum <- acum + num;
		FinSi
		// Verificación mayor y menor
		Si num > mayor Entonces
			mayor <- num;
		FinSi
		Si num < menor Entonces
			menor <- num;
		FinSi
	FinPara
	// Calcular promedio
	prom <- acum / impar;
	// Mostrar valores
	Escribir 'El promedio de los número impares es: ', prom, '.';
	Escribir 'El número mayor es: ', mayor, '. Y el menor es: ', menor, '.';
	Escribir 'La cantidad de pares es: ', par, '.';
FinProceso
