Funcion ImprimirArreglo(ArregloN,n)
	Escribir Sin Saltar "{"
	Para i<-0 Hasta n-1 Hacer
		Escribir Sin Saltar ArregloN[i],",";
	FinPara
	Escribir "}"
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
ImprimirArreglo(ArregloN,N);
///i<N
//	N<-6
operaciones<-1;
Para i<-1 hasta N-1 Hacer
	
	//i=1
	//N=6
	//N-i-1-> 4
	//{0,...,4}
	//{0,...,3}
	//{0,...,2}
	//{0,...,1}
	//{0}

	para mayor<-0 Hasta N-i-1 Hacer 
	
		si ArregloN[mayor]>ArregloN[mayor+1] Entonces
			//intercambio
			temp<-ArregloN[mayor];
			ArregloN[mayor]<-ArregloN[mayor+1];
			ArregloN[mayor+1]<-temp;
		FinSi
		Escribir Sin Saltar operaciones,": Mayor: ", mayor, " i: ",i,": "
		ImprimirArreglo(ArregloN,N);
		operaciones<-operaciones+1;
	FinPara
FinPara	
ImprimirArreglo(ArregloN,N);


FinAlgoritmo


