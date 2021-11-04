Funcion par<-EsNumeroPar(num)
	res<-num%2;
	si res=0 Entonces
		par<-Verdadero;
	SiNo
		par<-falso;
	FinSi
FinFuncion

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

SubProceso v<-ValidarNumero()
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


Algoritmo EjercicioCalificacionesDeAlumnos
	Definir numEstudiantes Como Entero;
	
	Repetir
	Escribir "Numero de estudiantes a evaluar";
	numEstudiantes<-ValidarNumero();//pedimos el numero y lo validamos desde la entrada estandar
	Hasta Que (numEstudiantes>0)
	
	Dimension cal1[numEstudiantes], cal2[numEstudiantes];
	
	Para i<-0 hasta numEstudiantes-1 con paso 1 Hacer
		Escribir "Ingrese calificacion 1 para estudiante ", i+1;
		cal1[i]<-ValidarNumero();
		Escribir "Ingrese calificacion 2 para estudiante ", i+1;
		cal2[i]<-ValidarNumero();
	FinPara
	BurbujaAscendente(cal1,NumEstudiantes);
	BurbujaAscendente(cal2,NumEstudiantes);
	//logica del promedio
	Definir promedioCal1 Como Real;
	Definir promedioCal2 Como Real;
	Definir suma Como Real;
	promedioCal1<-0;
	promedioCal2<-0;
	sumaCal1<-0;
	sumaCal2<-0;
	Para i<-0 hasta numEstudiantes-1 con paso 1 Hacer
		promedioCal1=promedioCal1+cal1[i];
		sumaCal1=sumaCal1+cal1[i]
		promedioCal2=promedioCal2+cal2[i];
		sumaCal2=sumaCal2+cal2[i]
	FinPara
	promedioCal1=promedioCal1/numEstudiantes;
	promedioCal2=promedioCal2/numEstudiantes;
	ImprimirArreglo(Cal1,numEstudiantes);
	Escribir "El promedio de la calificacion 1 es: ", promedioCal1;
	Escribir "El promedio de la calificacion 2 es: ", promedioCal2;
	
	Escribir "La suma todal de la calificaciones 1 es:", sumaCal1;
	Escribir "La suma todal de la calificaciones 2 es:", sumaCal2;
	
	Escribir "La calificacion 1 mas baja es: ", cal1[0];
	Escribir "La calificacion 2 mas baja es: ", cal2[0];
	
	Escribir "La calificacion 1 mas alta es: ", cal1[numEstudiantes-1];
	Escribir "La calificacion 2 mas alta es: ", cal2[numEstudiantes-1];
	
	medianaCal1<-0;
	medianaCal2<-0;
	si EsNumeroPar(numEstudiantes) Entonces
		indicePar<-(numEstudiantes/2)-1;
		Escribir "numero de estudiantes: ", numEstudiantes;
		indicePar2<-numEstudiantes/2;
		Escribir "indicie par:",indicePar,"  ", indicePar2;
		medianaCal1<-(cal1[indicePar]+cal1[indicePar2])/2;
		medianaCal2<-(cal2[indicePar]+cal2[indicePar2])/2;
	SiNO
		Definir pos Como Entero
		pos<-trunc(NumEstudiantes/2);
		
		medianaCal1<-cal1[pos];	
		medianaCal2<-cal2[pos];
	FinSi
	Escribir "La mediana de las calificaciones 1 es: ", medianaCal1;
	Escribir "La mediana de las calificaciones 2 es: ", medianaCal2;
	
FinAlgoritmo
