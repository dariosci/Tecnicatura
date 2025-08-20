'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Calcular el factorial de un número mayor o igual a 0. 

Proceso Ejercicio5
	Definir i, num, factorial Como Entero;
	factorial <- 1;
	Repetir
		Escribir "Ingrese un número entero para calcular su factorial:";
		Leer num;
	Hasta Que num >= 0;
  	
  	Para i <- num Hasta 1 Con Paso -1 Hacer
  		factorial <- factorial * i;
  	Fin Para
	Escribir num, "! = ", factorial;

FinProceso
'''
factorial = 1
while True: # Repetir - al estar la condicion verdadera al menos se ejecuta una vez
    num = int(input('Ingrese un número entero para calcular su factorial: '))
    if num >= 0:
        break  # Sale del bucle si el número es mayor o igual a 0
for i in range(num, 1, -1):
    factorial = factorial * i
print(f"{num}! = {factorial}")