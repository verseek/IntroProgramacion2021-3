Algoritmo EjerciciosArregloNumeroMayorArrglosYCiclos
	Escribir "Cuantos numeros deseas evaluar";
	Leer Cnumero;
	
	Dimension arreglo(Cnumero);
	Escribir "Pedir numeros dentro de un clico"
	//Solicitar los numero en un ciclo
	
	Para i<-0 Hasta Cnumero-1 con paso 1 Hacer
		Escribir "Dame numero en la posicion ", i;
		Leer arreglo[i];
	FinPara
	
	Escribir "El contenido del arreglo es"
	Para i<-0 Hasta Cnumero-1 con paso 1 Hacer
		Escribir arreglo[i];
	
	FinPara
	mayor<-arreglo[0];
	
	Para i<-1 hasta Cnumero-1 con paso 1 Hacer
		Escribir "Comparando ", mayor, ">", arreglo[i];
		si mayor<arreglo[i] Entonces
			mayor <-arreglo[i];
			escribir "Se intercambia";
		FinSi
	FinPara
	
	Escribir "El numero mayor es: ",mayor;
FinAlgoritmo
