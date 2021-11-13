Algoritmo _0002_PromedioDeNNumeros
	Escribir "Ejercicio Promedio de numeros";
	Escribir "";
	
	Escribir sin saltar "ingrese la cantidad de numero a promediar";
	Leer cantidadDeNumero;
	suma<-0;
	Para v<-1 Hasta cantidadDeNumero Con Paso 1 Hacer
		Escribir sin saltar "Ingres numero ",v;
		Leer numero;
		suma<-suma+numero;
	FinPara
	Escribir "El promedio de los numeros es ", suma/cantidadDeNumero
	//Escribir sin saltar "Ingres numero ",1;
	//Escribir "";
	//Escribir sin saltar "Ingres numero ",2;
	//Escribir "";
	//Escribir sin saltar "Ingres numero ",3;
	//Escribir "";
	//Escribir sin saltar "Ingres numero ",4;
	//Escribir "";
	//Escribir sin saltar "Ingres numero ",5;
	//Escribir "";
FinAlgoritmo
