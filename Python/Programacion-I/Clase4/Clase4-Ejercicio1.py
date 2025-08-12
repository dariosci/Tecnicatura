# Ejercicio 1 - Número par o impar
num = int(input("Ingrese un número entero: "))
print(f"El residuo de la division es: {num % 2}")
if num % 2 == 0:
    print(f"El número {num} es par.")
else:
    print(f"El número {num} es impar.")