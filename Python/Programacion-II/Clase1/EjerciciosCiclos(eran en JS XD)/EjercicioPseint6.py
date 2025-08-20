'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Calcular la siguiente sumatoria de los "N" elementos:  S = 1 + 4 + 9 + ?   

Proceso Ejercicio6
	Definir i, elementos, suma Como Entero;
	
	Escribir "Ingrese la cantidad de elementos a sumar: ";
	Leer elementos;
	i <- 1;
	suma <- 0;	
	
	Mientras i <= elementos Hacer
		suma <- suma + i^2;
		i <- i +1;
	FinMientras
	
	Escribir "La sumatoria de ", elementos, " es:", suma;
FinProceso
'''
elementos = int(input("Ingrese la cantidad de elementos a sumar: "))
suma = 0
i = 0
while i <= elementos:
    suma = suma + i**2
    i += 1
print(f"La sumatoria de {elementos} es: {suma}")