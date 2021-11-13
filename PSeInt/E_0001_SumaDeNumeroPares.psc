Algoritmo _0001_SumaDeNumeroPares
	Escribir "Ejercicio suma de numeros pares";
	Escribir "";
	Escribir Sin Saltar "Ingresar primer numero";
	Leer primerNumero;
	Repetir
		Escribir Sin Saltar"Ingresar segundo numero";
		Leer segundoNumero;
	Hasta Que  segundoNumero>primerNumero
	//4/2=2
	//4%2=0 //par
	//primerNumero=3
	//segundoNumero=8
	Resultado<-"La suma de ";
	Escribir Sin Saltar Resultado;
	suma<-0;
	Para v<-primerNumero Hasta segundoNumero con paso	1 Hacer
		Si v%2=0 Entonces
			//es un numero par
			Escribir sin saltar v;
			si v<>segundoNumero Entonces
				Escribir Sin Saltar "+";
			FinSi
			suma<-suma+v;
		FinSi		
	FinPara
	Escribir  " es ",suma;
FinAlgoritmo
