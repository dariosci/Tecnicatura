'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Ingresar "N" enteros, visualizar la suma de los números pares de la lista, 
// cuántos números pares existen y cuál es el promedio de los números impares. 

Proceso Ejercicio7
	Definir i, num, n_enteros, suma_pares, cont_pares, promedio_impares, cont_impares, suma_impares Como Entero;
	
	Escribir "Ingresar cantidad de enteros para realizar los calculos:";
	Leer n_enteros;
	suma_pares <- 0;
	suma_impares <- 0;
	cont_pares <- 0;
	cont_impares <- 0;
	i <- 1;
	
	Mientras i <= n_enteros Hacer
		Escribir "Ingrese entero número ", i, ": ";
		Leer num;
		Si num mod 2 == 0 Entonces
			suma_pares <- suma_pares + num;
			cont_pares <- cont_pares + 1;
		SiNo
			suma_impares <- suma_impares + num;
			cont_impares <- cont_impares + 1;
		FinSi
		i <- i + 1;
	FinMientras
	
	promedio_impares <- suma_impares / cont_impares;
	
	Escribir "La suma de los números pares ingresados es: ", suma_pares;
	Escribir "La cantidad de números pares ingresados es: ", cont_pares;
	Escribir "El promedio de los números impares ingresados es: ", promedio_impares;
FinProceso
'''
nEnteros = int(input("Ingresar cantidad de enteros para realizar los calculos: "))
sumaPares = 0
sumaImpares = 0
contPares = 0
contImpares = 0
i = 1
while i <= nEnteros:
    num = int(input(f"Ingrese entero número {i}: "))
    if num % 2 == 0:
        sumaPares = sumaPares + num
        contPares += 1
    else:
        sumaImpares = sumaImpares + num
        contImpares += 1
    i += 1
promedioImpares = sumaImpares / contImpares
print(f"La suma de los números pares ingresados es: {sumaPares}")
print(f"La cantidad de números pares ingresados es: {contPares}")
print(f"El promedio de los números impares ingresados es: {promedioImpares}")