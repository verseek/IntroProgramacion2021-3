Funcion par<-EsNumeroPar(num)
	res<-num%2;
	si res=0 Entonces
		par<-Verdadero;
	SiNo
		par<-falso;
	FinSi
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

SubProceso v<-ObtenerNumero()
	Definir num Como Caracter;
	Definir  validarnum, validarmenos Como Logico;
	Repetir
		Leer num;
		largo<-Longitud(num);
		validarnum<-Verdadero;
		validarmenos<-Verdadero;
		contpunto<-0;
		para i<-0 Hasta largo-1 con paso 1 Hacer
			numUnico<-Subcadena(num, i,i);
			si numunico<>'0' & numunico<>'1' &numunico<>'2' & numunico<>'3' & numunico<>'4' & numunico<>'5' & numunico<>'6' & numunico<>'7' & numunico<>'8' & numunico<>'9' Entonces
				validarnum<-falso;
			FinSi
			si numunico='.' Entonces
				contpunto<-conpunto+1;
			FinSi
			si numunico='-' Entonces
				Si i=1 Entonces
					validarmenos<-Verdadero;
				SiNo
					validarmenos<-Falso;
				FinSi
			FinSi
		FinPara
		sI validarnum=Falso |(contpunto>1) | validarmenos=Falso Entonces
			Escribir "Este no es un número, ingres correctamente";			
		FinSi
	hasta que validarnum=Verdadero & (contpunto=0 | contpunto=1) &validarmenos=Verdadero;
	Escribir "Longitud", Longitud(num);
	Si Longitud(num)=0 Entonces
		v<-0
	SiNo
		v<-ConvertirANumero(num);
	FinSi
	
FinSubProceso


Algoritmo sin_titulo
	Repetir
		Escribir "Numero de estudiantes a evaluar";
		n<-ObtenerNumero();//pedimos el numero y lo validamos desde la entrada estandar
	Hasta Que (n>0)
	Dimension  cal1[n], cal2[n];// indice base 0
	
	Para i<-0 hasta n-1 Con Paso  1 Hacer
		Escribir "Ingrese calificacion 1 para el estudiante ", i+1;
	//	cal1[i]<-ObtenerNumero();
		Leer dato;
		Cal1[i]<-dato;
		Escribir "Ingrese calificacion 2 para el estudiante ", i+1;
		//cal2[i]<-ObtenerNumero();
		Leer dato
		Cal2[i]<-dato;
	FinPara
	
	//Inicio de promedio
	promCal1<-0;
	promCal2<-0;
	sumaCal1<-0;
	sumaCal2<-0;
	Para i<-0 hasta n-1 Con Paso  1 Hacer
		sumaCal1=sumaCal1+cal1[i]
		sumaCal2=sumaCal2+cal2[i]
	FinPara
	promCal1=sumaCal1/n;//promedio
	promCal2=sumaCal2/n;//promedio
	Escribir "El promedio de la calificacion 1 es: ", promCal1;
	Escribir "El promedio de la calificacion 2 es: ", promCal2;
	//Fin de promedio
	
	//Inicio Mediana
	//Paso 1 valores ordenados ascendentemente
	BurbujaAscendente(cal1,n);
	BurbujaAscendente(cal2,n);
	
	//Paso 2 
	
	si EsNumeroPar(n) Entonces
		// Es par
		//       {6,7,8,9}  
		//       n=4 si n es par , la mediana es el promedio de los valores intermedios
		//       7 8  (7+8)/2= 7.5
		//{1,2,3,4,5,6,7,8} 8/2-1=3
	    indicePar<-(n/2)-1; //4/2-1=1
		indicePar2<-n/2;//4/2=2
		medianaCal1=(Cal1[indicePar]+cal1[indicePar2])/2;
		medianaCal2=(Cal2[indicePar]+cal2[indicePar2])/2;
	SiNo
		//       {6,7,8,9,10}
		//       n=5 si en es impar, la mediana es el valor del medio de la lista
		//       resultado es 8
		//       n=5 5/2 =2.5 Real
		indice=trunc(n/2);//2.5; 2
		medianaCal1=cal1[indice];
		medianaCal2=cal2[indice];
	FinSi
	Escribir "La mediana de las calificaciones 1 es: ", medianaCal1;
	Escribir "La mediana de las calificaciones 2 es: ", medianaCal2;
	//Fin de Mediana
	
	Escribir "La suma todal de la calificaciones 1 es:", sumaCal1;
	Escribir "La suma todal de la calificaciones 2 es:", sumaCal2;
	
	Escribir "La calificacion 1 mas baja es: ", cal1[0];
	Escribir "La calificacion 2 mas baja es: ", cal2[0];
	
	Escribir "La calificacion 1 mas alta es: ", cal1[n-1];
	Escribir "La calificacion 2 mas alta es: ", cal2[n-1];
FinAlgoritmo
