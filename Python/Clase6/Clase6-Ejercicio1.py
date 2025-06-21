'''
Ejercicio 1:
Debemos plasmar la expresi´n en una expresión algorítmica, o sea
hacerlo en código
'''

a = float(input("Ingrese un número(a): "))
b = float(input("Ingrese un número(b): "))
c = float(input("Ingrese un número(c): "))

resultado = (a ** 3 * (b ** 2 - 2 * a * c)) / (2 * b)

print(f"El resultado de la operación es: {resultado}")