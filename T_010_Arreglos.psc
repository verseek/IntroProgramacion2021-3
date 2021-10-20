Algoritmo EjercicioDeArreglos
	//Dimension arreglo1(5);
	//Solicitar los numero
	Escribir "Dame primer numero";
	Leer primerNumero;
	
	Escribir "Dame segundo numero";
	Leer segundoNumero;
	
	Escribir "Dame tercer numero";
	Leer tercerNumero;
    
	//Evaluar cual es el numero mayor
	si primerNumero>segundoNumero & primerNumero>tercerNumero Entonces
		Escribir "El numero ", primerNumero, " es mayor"
	FinSi
	
	si segundoNumero>primerNumero & segundoNumero>tercerNumero Entonces
		Escribir "El numero ", segundoNumero, " es mayor"
	FinSi
	
	si tercerNumero>primerNumero & tercerNumero>segundoNumero Entonces
		Escribir "El numero ", tercerNumero, " es mayor"
	FinSi
	
	
	
	
FinAlgoritmo
