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

SubAlgoritmo contador<-ContarEspaciosCadena(TextoCadena por referencia)
	Definir contador Como Entero;
	contador<-1;
	limite=Longitud(TextoCadena)-1;
	para i<-0 Hasta limite con paso 1 Hacer
		caracter<-Subcadena(TextoCadena,i,i);
		//Escribir "-",caracter,"-";
		si caracter=" " & i<limite Entonces
			contador<-contador+1;
		FinSi
	FinPara
FinSubAlgoritmo
SubAlgoritmo DividirCadena(frase, ArregloCadena Por Referencia)
	//Definir espacios Como Entero;
	//espacios<-ContarEspaciosCadena(cadena);
	//Dimension ArregloCadena[espacios];
	
	IndicePalabra<-0;
	limite=Longitud(frase)-1;
	Para i<-0 hasta limite con paso 1 Hacer
		si Subcadena(frase,i,i)<>" " Entonces
			ArregloCadena[IndicePalabra]=ArregloCadena[IndicePalabra]+Subcadena(frase,i,i);
		SiNo
			IndicePalabra<-IndicePalabra+1;//Pasamos a la siguiente palabra
		FinSi

	FinPara
	
	
FinSubAlgoritmo

Algoritmo ReordenarFrase
	Escribir "Dame frase";
	//frase<-"Esto es una prueba de como espero se de el resulatado"
	leer frase;
	Definir espacios Como Entero;
	espacios<-ContarEspaciosCadena(frase);
	Dimension ArregloCadena[espacios];
	//imite=Longitud(frase)-1;
	DividirCadena(frase, ArregloCadena);
	
	//Para i<-0 hasta espacios-1 con paso 1 Hacer
	//	Escribir "Palabra ",i,": ",ArregloCadena[i];
	//FinPara
	ImprimirArreglo(ArregloCadena, espacios);
	BurbujaAscendente(ArregloCadena, espacios);
	ImprimirArreglo(ArregloCadena, espacios);
	BurbujaDescendente(ArregloCadena, espacios);
	ImprimirArreglo(ArregloCadena, espacios);
	
FinAlgoritmo


