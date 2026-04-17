Proceso DJ
	Definir nom, mayor, menor Como Texto;
	Definir total, hora, min, seg, dur, durMayor, durMenor Como Entero;
	// Ingresar datos
	Escribir 'Ingrese el nombre de la primera canción.';
	Leer nom;
	Escribir 'Ingrese su duración en minutos y segundos:';
	Leer min, seg;
	// Iniciar valores
	total <- 0;
	durMayor <- min*60+seg;
	mayor <- nom;
	durMenor <- min*60+seg;
	menor <- nom;
	// Iteración
	Mientras nom <> 'salir' Hacer
		dur <- min*60 + seg;
		total <- total + dur;
		Si dur > durMayor Entonces
			mayor <- nom;
			durMayor <- dur;
		SiNo
			Si dur < durMenor Entonces
				menor <- nom;
				durMenor <- dur;
			FinSi
		FinSi
		// Pedir otra canción
		Escribir 'Ingrese el nombre de la siguiente canción.';
		Escribir 'Escriba (salir) para salir:';
		Leer nom;
		Si nom <> 'salir' Entonces
			Escribir 'Ingrese la duración en minutos y segundos:';
			Leer min, seg;
		FinSi
	FinMientras
	// Calculando tiempo total de playlist
	hora <- trunc(total / 3600);
	min <- trunc(total / 60 - hora * 60);
	seg <- total - hora * 3600 - min * 60;
	// Mostrar datos
	Escribir 'La duración total de la playlist es: ', hora, ':', min, ':', seg;
	Escribir 'La canción más larga es: ', mayor, '.';
	Escribir 'La canción más corta es: ', menor, '.';
FinProceso
