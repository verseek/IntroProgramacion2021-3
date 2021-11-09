SubAlgoritmo bolCaracter<-EsNumero(caracter)
	bolCaracter<-falso;
	Segun caracter hacer
		"0": bolCaracter<-Verdadero;
		"1": bolCaracter<-Verdadero;
		"2": bolCaracter<-Verdadero;
		"3": bolCaracter<-Verdadero;
		"4": bolCaracter<-Verdadero;
		"5": bolCaracter<-Verdadero;
		"6": bolCaracter<-Verdadero;
		"7": bolCaracter<-Verdadero;
		"8": bolCaracter<-Verdadero;
		"9": bolCaracter<-Verdadero;
	FinSegun
FinSubAlgoritmo

//falso: significa que si contienen numero; verdadero: significa que no contineen numeros
subalgoritmo bol<-NoContieneNumeros(fraseOPalabra) 
	bol<-verdadero;
	Para i<-0 hasta Longitud(fraseOPalabra)-1 Con Paso 1 Hacer
		caracter<-subcadena(fraseOPalabra, i, i);
		si EsNumero(caracter) Entonces
			bol<-falso;
		FinSi
	FinPara

FinSubAlgoritmo

Algoritmo sin_titulo
	palabra<-"Hola mudo eretefsdf"
		//Definir  bolCaracter Como Logico
		
		Escribir palabra
	si NoContieneNumeros(palabra) Entonces
		Escribir "La cadena no contiene numero";
	SiNo
		Escribir "La cadena contiene numero"
	FinSi
	
FinAlgoritmo
