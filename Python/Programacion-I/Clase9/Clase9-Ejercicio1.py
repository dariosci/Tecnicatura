# Clase 9 - Ejercicios
# Ejercicio 1: Año Bisiesto
# Diseñar un programa que ingresado un año, nos devuelva por consola si es bisiesto o no,
#repetir la acción hasta el que el usuario lo desida.

anio = int(input("Ingrese un año: "))
while True:
    if anio % 4 == 0 and (anio % 100 != 0 or anio % 400 == 0):
        print(f"El año {anio} es bisiesto.")
    else:
        print(f"El año {anio} no es bisiesto.")
    continuar = int(input("Para seguir adelante digite 1: "))
    if continuar != 1:
        break
    anio = int(input("Ingrese otro año: "))