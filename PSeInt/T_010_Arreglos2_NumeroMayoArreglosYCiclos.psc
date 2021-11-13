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
	
	//Evaluacion con ciclo
	//{5, 4, 7, 6, 10, 2}
	// 1, 2, 3, 4, 5, 6 // indices Base 1
	// 0, 1, 2, 3, 4, 5 // indice Base 0
	//mayor<-arreglo[0]; mayor:5
	//mayor:5>arrreglo[1]:4 no se hace nada
	//mayor:5>arreglo[2]:7 , mayor <-arreglo[2]; mayor : 7
	//mayor:7>arreglo[3]:6 no se hace nada
	//mayor:7>arreglo[4]:10, mayor <-arreglo[4]; mayor : 10
	//mayor:10>arreglo[5]:2, no se hace nada
	//Fin
	
	
	Para i<-1 hasta Cnumero-1 con paso 1 Hacer
		Escribir "Comparando ", mayor, ">", arreglo[i];
		si   mayor<arreglo[i] Entonces
		
			mayor <-arreglo[i];
			escribir "Se intercambia";
		FinSi
	FinPara
	
	Escribir "El numero mayor es: ",mayor;
FinAlgoritmo
