'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Calcular la suma de los "N" primeros números
Definir i, num, suma Como Entero;
    Escribir "Ingrese cantidad de números a sumar:";
    Leer num;
	suma <- 0;
	Para i <- 0 Hasta num Con Paso 1 Hacer
		suma <- suma + i;
	Fin Para
		Escribir "la suma de los números entre 1 y ", num, " es: " ,suma;
'''

num = int(input('Ingrese cantidad de números a sumar: '))
suma = 0
for i in range(num+1):
    suma = suma + i
print(f'la suma de los números entre 1 y {num} es: {suma}')