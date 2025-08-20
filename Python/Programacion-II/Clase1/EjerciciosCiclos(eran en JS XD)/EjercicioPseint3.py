'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Leer 10 números e imprimir cuantos son positivos, cuantos negativos y cuantos neutros

Proceso Ejercicio3
	Definir i, num, negativos, positivos, neutros Como Entero;
    negativos <- 0;
    positivos <- 0;
	neutros <- 0;
    Para i <- 1 Hasta 10 Hacer
        Escribir i, " Ingrese un número:";
        Leer num;
		Si num <> 0 Entonces
			Si num > 0 Entonces
				positivos <- positivos + 1;
			Sino
				negativos <- negativos + 1;
			FinSi
		SiNo
			neutros <- neutros + 1;			
		FinSi        
    FinPara
    Escribir "Estos son los totales:";
    Escribir "---------------------------";
    Escribir "Números positivos: ", positivos;
    Escribir "Números negativos: ", negativos;
	Escribir "Números neutros: ", neutros;
FinProceso
'''
negativos = 0
positivos = 0
neutros = 0
for i in range(1,11):
    num = int(input(f'{i}-Ingrese un número: ')) # Pedimos un numero
    if num != 0: # Si no es cero
        if num > 0: # Si es positivo lo cuento como positivo
            positivos = positivos + 1
        else: # Si es negativo lo cuento como negativo
            negativos = negativos + 1
    else: # Si es cero lo cuento como neutro
        neutros = neutros + 1
print('Estos son los totales:') 
print('---------------------------') 
print('Numeros Positivos:', positivos) 
print('Numeros Negativos:', negativos) 
print('Numeros Negativos:', neutros)