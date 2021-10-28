Funcion Intercambio(Arreglo, IndiceOrigen, IndiceDestion)
	temp<-Arreglo[IndiceOrigen];
	Arreglo[IndiceOrigen]<-Arreglo[IndiceDestion];
	Arreglo[IndiceDestion]<-temp;
FinFuncion

Funcion ImprimirArreglo(ArregloN,n)
	Escribir Sin Saltar "{"
	Para i<-0 Hasta n-1 Hacer
		Escribir Sin Saltar ArregloN[i],",";
	FinPara
	Escribir "}"
FinFuncion

Algoritmo AlgoritmoSeleccion
	n<-5;
	Dimension  arreglo[n];
	
	
	arreglo[0]<-1;
	arreglo[1]<-4;
	arreglo[2]<-3;
	arreglo[3]<-2;
	arreglo[4]<-5;
	pos	<-0;
	
	ImprimirArreglo(arreglo, n);
	Para i<-0 Hasta n-2 Hacer //se encargara de la posicion de intercambio
		pos<-i;//i{0,...3} i=3, pos=3, j=4 //caso maximo
		Para j<-pos+1 hasta n-1 Hacer
			Si arreglo[pos]>arreglo[j] Entonces
				//positivo
				pos<-j;//encontramos el mas chico
			FinSi
		FinPara
		//intercambiar 
		si pos<>i entonces
			Intercambio(arreglo,i,pos);
		FinSi
		ImprimirArreglo(arreglo, n);
	FinPara
FinAlgoritmo
