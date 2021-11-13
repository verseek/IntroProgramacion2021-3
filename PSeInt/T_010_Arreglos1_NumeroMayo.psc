Algoritmo EjerciciosArregloNumeroMayor
	Dimension numeros(5);
	//Solictar los numero
	//Escribir "Dame numero en la posicion ", 0;
	//Leer numeros[0];
	
	//Escribir "Dame numero en la posicion ", 1;
	//Leer numeros[1];
	
	//Escribir "Dame numero en la posicion ", 2;
	//Leer numeros[2];
	
	//Escribir "Dame numero en la posicion ", 3;
	//Leer numeros[3];
	//Escribir "Dame numero en la posicion ", 4;
	//Leer numeros[4];
	
	Escribir "Pedir numeros dentro de un clico"
	//Solicitar los numero en un ciclo
	
	Para i<-0 Hasta 4 con paso 1 Hacer
		Escribir "Dame numero en la posicion ", i;
		Leer numeros[i];
	FinPara
	
	//Evaluar cual es el numero mayor
	mayor<-numeros[0];
	si mayor<numeros[1] Entonces
		mayor <-numeros[1];
	FinSi
	
	si mayor<numeros[2] Entonces
		mayor <-numeros[2];
	FinSi
	
	si mayor<numeros[3] Entonces
		mayor <-numeros[3];
	FinSi
	
	si mayor<numeros[4] Entonces
		mayor <-numeros[4];
	FinSi
	si mayor<numeros[5] Entonces
		mayor <-numeros[5];
	FinSi
	
	//Evaluacion con ciclo
	//{5, 4, 7, 6, 10, 2}
	
	//mayor<-arreglo[0]; mayor:5
	//mayor:5>arrreglo[1]:4 no se hace nada
	//mayor:5>arreglo[2]:7 , mayor <-arreglo[2]; mayor : 7
	//mayor:7>arreglo[3]:6 no se hace nada
	//mayor:7>arreglo[4]:10, mayor <-arreglo[4]; mayor : 10
	//mayor:10>arreglo[5]:2, no se hace nada
	//Fin
	mayor<-numeros[0];
	Para i<-1 hasta 4 con paso 1 Hacer
		si mayor<numeros[i] Entonces
			mayor <-numeros[i];
		FinSi
	FinPara
	
	Escribir "El numero mayor es: ",mayor;
	
	
	
	
FinAlgoritmo
