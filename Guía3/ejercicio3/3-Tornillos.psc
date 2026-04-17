Proceso Tornillos
	Definir regla, med, fallaTotal Como Real;
	Definir cod, lotes, mejor, peor, mejorLote, peorLote, falla, acum, i Como Entero;
	// Iniciar las variables
	lotes <- 0;
	acum <- 0;
	peor <- -1;
	mejor <- 11;
	
	Escribir 'Ingrese el número de código del primer lote:';
	Leer cod;
	Escribir 'Ingrese la medida correcta de los tornillos:';
	Leer regla;
	// Iterar calidad de lotes
	Mientras cod <> 0 Hacer
		lotes <- lotes + 1;
		falla <- 0;
		// Iterar calidad por tornillo
		Para i <- 1 Hasta 3 Hacer
			Escribir 'Ingrese la medida del ', i, 'º tornillo: ';
			Leer med;
			Si med <> regla Entonces
				falla <- falla + 1;
			FinSi
		FinPara
		acum <- acum + falla;
		// Verificación del mejor y peor lote
		Si falla > peor Entonces
			peor <- falla;
			peorLote <- cod;
		FinSi
		Si falla < mejor Entonces
			mejor <- falla;
			mejorLote <- cod;
		FinSi
		
		Escribir 'Ingrese el código del nuevo lote (Ingrese 0 para terminar el programa):';
		Leer cod;
	FinMientras
	// Calcular porcentaje de fallas
	fallaTotal <- (acum / (lotes * 3)) * 100;
	fallaTotal <- trunc(fallaTotal * 100) / 100;
	// Montrar datos
	Escribir 'Se analizaron ', lotes, ' lotes en total.';
	Escribir 'El Porcentaje general de error fue del: ', fallaTotal, '%.';
	Escribir 'El lote con mejor calidad es: ', mejorLote, ' con ', mejor, ' fallas.';
	Escribir 'El lote con peor calidad es: ', peorLote, ' con ', peor, ' fallas.';
FinProceso
