Funcion SiEntonces
	Borrar Pantalla
	Escribir "Ejemplo de uso de Condición Si Entonces"
	Si  3<2 Entonces //Verdadero
		//Caso Verdadero
		Escribir "El resultado de la condición es Verdadero"
		Escribir "1";
		Escribir "2";
		Escribir "3";
		Escribir "4";
	SiNo
		//Caso Falso
		Escribir "El resultado de la condición es Falso"
	FinSi
	Escribir  "Fin del ejemplo de estructura Si Entonces"
FinFuncion

Funcion EstructuraSegun
	Borrar Pantalla
	Escribir "Ejemplo de estructura de selección multiple (Segun)";
	V<-5;
	
	Segun V Hacer
		1: 
			Escribir "1ra instruccion del caso 1";
			Escribir "2da instruccion del caso 1";
		2: 
			Escribir "1ra instruccion del caso 2";
			Escribir "2da instruccion del caso 2";
		3: 
			Escribir "1ra instruccion del caso 3";
			Escribir "2da instruccion del caso 3";
			//Ejemplo de rango
		4,5,6:
			Escribir "La variable tiene un valor dentro del rango de 4-6 y su valor es: ",V
		De Otro Modo:
			Escribir "Caso ",V;
	FinSegun
FinFuncion

Funcion EstructuraMientras
	Borrar Pantalla
	Escribir "Ejercicio de estructura Ciclica, Ciclo Mientras"
	V<-6;
	i<-1;
	Mientras i<=10 Hacer //while
		Escribir "hola mundo ",i;
		i<-i+5;//incremento
	FinMientras
	Escribir "Fin del ejercicio";

	
	Escribir "Fin del ejercicio"
FinFuncion

Funcion EstructuraRepetir
	Borrar Pantalla
	Escribir "Ejercicio de estructura Ciclica, Ciclo Repetir"
	v<-0;
	Escribir "Incremento antes de impresión"
	Repetir    //Do //Do-While
		v<-v+1; //incremento ,,, paso
		Escribir "Hola mundo ",v
	Hasta Que v=5; //While
	
	Escribir ""
	
	v<-1;
	Escribir "Incremento despues de impresión"
	Repetir    //Do //Do-While
		Escribir "Hola mundo ",v
		v<-v+1;
	Hasta Que v=5; //While
	
	Escribir "Fin del ejercicio"
FinFuncion

Funcion EstructuraPara
	Borrar Pantalla
	Escribir "Ejercicio de estructura Ciclica, Ciclo Para"
	Para v<-1 hasta 5 Con Paso 1 Hacer //v<=5 //For
		Escribir "Hola mundo ",v;
	FinPara
	Escribir "Fin del ejercicio"
FinFuncion
funcion TablaMultiplicar
	Borrar Pantalla
	Escribir "Ejercicio de estructura Ciclica, Tablas de multiplicar"
	Escribir ""
	Escribir "Impresion en cliclo Tabla X"
	Escribir "Indique la tabla de multiplicar a mostrar: "
	Leer multiplicando;
	//multiplicando<-335     //multiplicandoXMultiplicador
	multiplicador<-1
	
	mientras multiplicador<=10 Hacer
		Escribir multiplicando,"x",multiplicador,"=",multiplicando*multiplicador
		multiplicador<-multiplicador+1;
	FinMientras
FinFuncion

Algoritmo SubAlgoritmos2
	//1 Si Entonces
	//2 Segun 
	//3 Mientras
	//4 Repetir
	//5 Para
	//6 TablaMultiplicar
	
	Repetir
		Borrar Pantalla
		Escribir 	"1 Si Entonces"
		Escribir 	"2 Segun" 
		Escribir 	"3 Mientras";
		Escribir 	"4 Repetir";
		Escribir 	"5 Para";
		Escribir 	"6 TablaMultiplicar";
		Escribir 	"7 Salir";
		Escribir Sin Saltar "Opción: ";
		Leer opc;
		
		//Escribir "La opcion seleccionada es: ", opc
		
		Segun opc hacer
			1:
				SiEntonces
			2:
				EstructuraSegun
			3:
				EstructuraMientras
			4:
				EstructuraRepetir
			5:
				EstructuraPara
			6:
				TablaMultiplicar
			7:
				Escribir "Fin del programa"
			De Otro Modo:
				Escribir "Invalido solo valores del 1 al 7";
				
		FinSegun
		
		//   Si opc>= 1 & opc<=7 entonces
		//		Escribir "Valido";
		//	SiNo
		//		Escribir "Invalido solo valores del 1 al 7";
		//	FinSi
		
		Esperar Tecla
	Hasta Que opc=7
FinAlgoritmo
