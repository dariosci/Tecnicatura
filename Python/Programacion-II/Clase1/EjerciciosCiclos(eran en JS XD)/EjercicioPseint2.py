'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Se desea calcular independientemente la suma de los números pares e impares comprendidos entre 1 y 50

Proceso Ejercicio2
	Definir i, pares, impares Como Entero;
    pares <- 0;
    impares <- 0;
    Para i <- 2 Hasta 49 Hacer
		// Es par o impar
		Si i mod 2 == 0 Entonces
			pares <- pares + i;
		Sino
        	impares <- impares + i;
		FinSi
    FinPara
    Escribir "Estos son los totales:";
    Escribir "---------------------------";
    Escribir "Suma de números pares: ", pares;
    Escribir "Suma de números impares: ", impares;

FinProceso
'''
pares = 0
impares = 0
for i in range(1,51):
    if i % 2 == 0: # Si es PAR
        pares = pares + i
    else: # Si es IMPAR
        impares = impares + i
print('Estos son los totales:') 
print('---------------------------') 
print('Suma de números pares:', pares) 
print('Suma de números impares:', impares) 