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
				validarmenos<-Verdadero;
			SiNo
				validarmenos<-Falso;
			FinSi
		FinPara
		sI validarnum=Falso |(contpunto>1) Entonces //| validarmenos=Falso Entonces
			Escribir "Este no es un número, ingres correctamente";			
		FinSi
	hasta que validarnum=Verdadero & (contpunto=0 | contpunto=1) &validarmenos=Verdadero;
	v<-ConvertirANumero(num);
FinSubProceso

Algoritmo EjercicioValidarNumero
	Escribir "Ingrese numero";
	num<-ValidarNumero();	
	
FinAlgoritmo
