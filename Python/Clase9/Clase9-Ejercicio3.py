# Clase 9 - Ejercicios
# Ejercicio 3: 
# Leer 10 numeros e imprimir cuantos son positivos, cuantos negativos y cuantos son neutros.

numeros_positivos = 0
numeros_negativos = 0
numeros_neutros = 0

for i in range(10):
    num = int(input(f"Ingrese el número {i + 1}: "))
    if num > 0:
        numeros_positivos += 1
    elif num < 0:
        numeros_negativos += 1
    else:
        numeros_neutros += 1
        
print(f"Números positivos: {numeros_positivos}")
print(f"Números negativos: {numeros_negativos}")
print(f"Números neutros: {numeros_neutros}")