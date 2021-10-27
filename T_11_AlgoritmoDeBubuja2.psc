
Funcion ImprimirArreglo(ArregloN,n)
		Escribir Sin Saltar "{"
		Para i<-0 Hasta n-1 Hacer
			Escribir Sin Saltar ArregloN[i],",";
		FinPara
		Escribir "}"
FinFuncion

Funcion Intercambio(Arreglo, IndiceOrigen, IndiceDestion)
	temp<-Arreglo[IndiceOrigen];
	Arreglo[IndiceOrigen]<-Arreglo[IndiceDestion];
	Arreglo[IndiceDestion]<-temp;
FinFuncion

Funcion BurbujaAscendente(ArregloN Por Referencia, N)
	Para i<-1 hasta N-1 Hacer
		para mayor<-0 Hasta N-i-1 Hacer 
			si ArregloN[mayor]>ArregloN[mayor+1] Entonces
				Intercambio(ArregloN, mayor, mayor+1)
			FinSi
		FinPara
	FinPara	
FinFuncion

Funcion BurbujaDescendente(ArregloN Por Referencia, N)
	Para i<-1 hasta N-1 Hacer
		para mayor<-0 Hasta N-i-1 Hacer 
			si ArregloN[mayor]<ArregloN[mayor+1] Entonces
				Intercambio(ArregloN, mayor, mayor+1)
			FinSi
		FinPara
	FinPara	
FinFuncion

Algoritmo OrdenacionBubuja
	N<-7
	dimension ArregloN[N];
	ArregloN[0]<-3;
	ArregloN[1]<-2;
	ArregloN[2]<-6;
	ArregloN[3]<-1;
	ArregloN[4]<-5;
	ArregloN[5]<-4;
	ArregloN[6]<-12;
	//ArregloN={3,	2,	6,	1,	5,	4}
	ImprimirArreglo(ArregloN,N);//imprimo antes de ordenar
	
	BurbujaAscendente(ArregloN,N);
    ImprimirArreglo(ArregloN,N);//impriimo despues de ordenar
	
	BurbujaDescendente(ArregloN,N);
	ImprimirArreglo(ArregloN,N);

FinAlgoritmo

