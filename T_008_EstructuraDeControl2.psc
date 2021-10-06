Algoritmo EjercicioEstructurasDeControl2
	Escribir ""
	Escribir "Impresion en cliclo Tabla X"
	Escribir "Indique la tabla de multiplicar a mostrar: "
	Leer multiplicando;
	//multiplicando<-335     //multiplicandoXMultiplicador
	multiplicador<-1
	
	mientras multiplicador<=10 Hacer
		Escribir multiplicando,"x",multiplicador,"=",multiplicando*multiplicador
		multiplicador<-multiplicador+1;
	FinMientras
FinAlgoritmo
