# Ejercicio 1: Valor dentro de un rango

num = int(input("Ingrese un número dentro del rango 0 al 5: "))
minimo = 0
maximo = 5
dentroRango = num >= minimo and num <= maximo
if dentroRango:
    print(f"El número {num} está dentro del rango de {minimo} a {maximo}")
else:
    print(f"El número {num} está fuera del rango de {minimo} a {maximo}")  