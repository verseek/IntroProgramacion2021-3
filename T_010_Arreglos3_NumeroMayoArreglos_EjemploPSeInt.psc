// Busca los dos mayores de una lista de N datos

Algoritmo Mayores
	
	// primero se declara un arreglo de 200 elementos
	Dimension datos[10];
	
	// luego se pide al usuario ingresar la cantidad de datos, 
	// que no debera ser mayor a 200
	//Escribir "Ingrese la cantidad de datos (de 2 a 200):"
	//Leer n
	n<-10;
	// se leen uno por uno los 200 datos y se los guarda en el arreglo
	//Para i<-0 Hasta n-1 Hacer
	//	Escribir "Ingrese el dato ",i,":"
	//	Leer datos[i]
	//FinPara
	
	datos[0]<-10;
	datos[1]<-9;
	datos[2]<-8;
	datos[3]<-7;
	datos[4]<-6;
	datos[5]<-65;
	datos[6]<-4;
	datos[7]<-3;
	datos[8]<-453;
	datos[9]<-1;
	Escribir Sin Saltar "{"
	Para i<-0 Hasta n-1 Hacer
		Escribir Sin Saltar datos[i],",";
	FinPara
	Escribir "}"
	// se comparan los dos primeros y se toman como may1 (el mayor de los
	// dos) y may2 (el segundo mayor).
	Si datos[0]>datos[1] Entonces
		may1<-datos[0]
		may2<-datos[1]
	SiNo
		may1<-datos[1]
		may2<-datos[0]
	FinSi
	Escribir "El datos inicial mas grande es: ", may1
	Escribir "El segundo datos inicial mas grande es: ", may2
	// se recorren los demas elementos buscan si hay alguno mayor que may1 o may2
	Para i<-2 Hasta n-1 Hacer
		Si datos[i]>may1 Entonces // si hay un valor mayor que may1
			may2<-may1 // como may1 era el más grande, pasa a estar en segundo lugar
			may1<-datos[i] // y el nuevo dato toma el primer puesto (mayor de todos)
		SiNo // si no era mas grande que may1, todavia puede ser mas grande que may2
			Si datos[i]>may2 Entonces // si supera al segundo mayor que teniamos
				may2<-datos[i] // se lo guarda como segundo mayor
			FinSi
		FinSi
	FinPara
	
	// se muestran los resultados
	Escribir "El mayor es: ",may1
	Escribir "El segundo mayor es: ",may2
	
FinAlgoritmo
