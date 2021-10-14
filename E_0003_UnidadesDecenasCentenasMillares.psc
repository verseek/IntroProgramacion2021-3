Algoritmo UnidadesDescenasCentenasMillar
	
	Escribir "Ejercio donde se identifican las unidades, descenas, centenas y unidades de millar de un numero"
	
	Escribir "Ingrese el numero a evaluar: ";
	Leer numeroX;
	//numeroX<-2654;
	millar<-trunc(numeroX/1000);
	residuoMillar<-numeroX %1000;
	Escribir "El numero ", numeroX, " tiene ", millar, " unidades de millar";
	//Escribir "Residuo de millar ",residuoMillar;
	
	centena<-trunc(residuoMillar/100);
	residuoCentenas<-residuoMillar %100;
	Escribir "El numero ", numeroX, " tiene ", centena, " Centenas";
	//Escribir "Residuo de centenas ",residuoCentenas;
	
	decenas<-trunc(residuoCentenas/10);
	unidades<-residuoCentenas %10;
	Escribir "El numero ", numeroX, " tiene ", decenas, " decenas";
	Escribir "y ",unidades, " unidades";
	
	//2654
	//MMDCLIV
	
	//MM 2000      M, MM, MMM, IV-, V-, VI-, VII-, VIII-, IX-
	//DC 600       C, CC, CCC, CD, D, DC, DCC, DCCC, CM 
	//L 50
	//IV 4
	//5473
	romano<-"";
	segun (millar)
		1:romano<-romano+"M";
		2:romano<-romano+"MM";
		3:romano<-romano+"MMM";
		4:romano<-romano+"IV-";
		5:romano<-romano+"V-";
		6:romano<-romano+"VI-";
		7:romano<-romano+"VII-";
		8:romano<-romano+"VIII-";
		9:romano<-romano+"IX-";
	FinSegun
	
	segun (centena)
		1:romano<-romano+"C";
		2:romano<-romano+"CC";
		3:romano<-romano+"CCC";
		4:romano<-romano+"CD";
		5:romano<-romano+"D";
		6:romano<-romano+"DC";
		7:romano<-romano+"DCC";
		8:romano<-romano+"DCCC";
		9:romano<-romano+"CM";
	FinSegun
	
	segun (decenas)
		1:romano<-romano+"X";
		2:romano<-romano+"XX";
		3:romano<-romano+"XXX";
		4:romano<-romano+"XL";
		5:romano<-romano+"L";
		6:romano<-romano+"LX";
		7:romano<-romano+"LXX";
		8:romano<-romano+"LXXX";
		9:romano<-romano+"XC";
	FinSegun
	
	segun (unidades)
		1:romano<-romano+"I";
		2:romano<-romano+"II";
		3:romano<-romano+"III";
		4:romano<-romano+"IV";
		5:romano<-romano+"V";
		6:romano<-romano+"VI";
		7:romano<-romano+"VII";
		8:romano<-romano+"VIII";
		9:romano<-romano+"IX";
	FinSegun
	
	Escribir "El numero romano es ",romano
	
	
FinAlgoritmo
