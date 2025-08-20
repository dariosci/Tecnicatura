'''
//Clase 3a - Capítulo 6: Estructuras Repetitivas
// Suponga que se tiene un conjunto de calificaciones de un grupo de 10 alumnos. 
//Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo

Proceso Ejercicio4
	Definir i, notas, menor, total Como Entero;
	Definir promedio Como Real;
	total <- 0;
	menor <- 99;
	Para i <- 1 Hasta 10 Hacer
        Escribir "Ingrese nota ", i,":";
		Leer notas;
		total <- total + notas;
		Si notas < menor Entonces //si nota es menor a menor
			menor <- notas;
		FinSi
    FinPara
	promedio <- total / 10;
    Escribir "El promedio de las calificaciones ingresadas es: ", promedio;
	Escribir "La calificación más baja es: ", menor;
FinProceso
'''
total = 0
menor = 99
for i in range(1,11):
    notas = int(input(f'Ingrese nota {i}: ')) #pedimos notas
    total = total + notas # sumamos la nota al total
    if notas < menor: # si la nota es menor la guardamos
        menor = notas
promedio = total / 10 # sacamos el promedio de las 10 notas ingresadas
print('El promedio de las calificaciones ingresadas es:', promedio)
print('La calificación más baja es:', menor)