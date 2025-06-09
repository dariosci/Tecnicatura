'''
Ejercicio 3: 
Pedir al usuario que ingrese un mes del año, el valor debe ser un número del 1 al 12, luego le decimos en que estacion del año está
Venaro -> del 21/12 al 21/03 -> 1, 2, 3
Otoño -> del 21/03 al 21/06 -> 4, 5, 6
Invierno -> del 21/06 al 21/09 -> 7, 8, 9
Primavera -> del 21/09 al 21/12 -> 10, 11, 12
'''
mes = int(input("Ingrese un mes del año (1-12): "))
estacion = None
if mes == 1 or mes == 2 or mes == 3:
    estacion = "Verano"
elif mes == 4 or mes == 5 or mes == 6:
    estacion = "Otoño"
elif mes == 7 or mes == 8 or mes == 9:
    estacion = "Invierno"
elif mes == 10 or mes == 11 or mes == 12:
    estacion = "Primavera"
else:
    estacion = "Error, mes no válido"

print(f"El mes {mes} corresponde a la estación: {estacion}")
