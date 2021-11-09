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
			si numunico<>'0' & numunico<>'1' & numunico<>'2' & numunico<>'3' & numunico<>'4' & numunico<>'5' & numunico<>'6' & numunico<>'7' & numunico<>'8' & numunico<>'9' Entonces
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
	//Escribir "Longitud", Longitud(num);
	Si Longitud(num)=0 Entonces
		v<-0
	SiNo
		v<-ConvertirANumero(num);
	FinSi
	
FinSubProceso

Proceso sin_titulo
	Repetir
		Escribir '¿De que número desea obtener los multiplos?'
		num<-ObtenerNumero();//  2
	Hasta Que num>0
	
	
	Escribir 'Cuantos multiplos de ', num , " desea imprimir: ";
	numMultiplos<-ObtenerNumero();//  5    2, 4 
	
	Escribir "Resultado del ejercicio con ciclo Repetir"
	i<-1
	multiplos<-0
	Repetir
		multiplos<-num*i
		Escribir '- ',multiplos
		i<-i+1
	Hasta Que i>numMultiplos
	
	Escribir "Resultado del ejercicio con ciclo Para"
	multiplos<-0;
	Para Z<-1 Hasta numMultiplos Con Paso 1 Hacer
		multiplos<-num*Z
		Escribir '- ',multiplos
	FinPara
	Escribir "Resultado del ejercicio con ciclo mientras"
	Z<-1;
	Mientras z<=numMultiplos Hacer
		multiplos<-num*Z
		Escribir '- ',multiplos
		Z<-Z+1;//Incremento
	FinMientras


FinProceso