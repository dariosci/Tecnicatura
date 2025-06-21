'''
Ejercicio 6: Ingresar "N" enteros, visualizar la suma de los numeros pares de la lista, 
cuandos numeros pares existen y cual es el promedio de los numeros impares.
'''

numeros = [] # declaramos la lista donde van los numeros a ingresar
n = int(input("¿Cuántos números enteros deseas ingresar? ")) # Preguntamos cuantos numeros quiere ingresar el usuario
for i in range(n):
    num = int(input(f"Ingrese el número {i + 1}: ")) # solicitamos el numero al usuario segun el orden (i)
    numeros.append(num) # agregamos el numero ingresado
suma_pares = 0 # inicializamos suma_pares
cantidad_pares = 0 # inicializamos cantidad_pares
suma_impares = 0 # inicializamos suma_impares
cantidad_impares = 0 # inicializamos cantidad_impares
for num in numeros: # recorremos la lista de numeros para hacer los calculos pedidos
    if num % 2 == 0: # si el numero es par
        suma_pares += num # sumamos el numero a suma_pares
        cantidad_pares += 1 # incrementamos en 1 la cantidad_pares
    else: # si el numero es impar
        suma_impares += num # sumamos el numero a suma_impares
        cantidad_impares += 1 # incrementamos en 1 la cantidad de impares
if cantidad_impares > 0: # para evitar error por division por cero, verificamos la cantidad de impares
    promedio_impares = suma_impares / cantidad_impares # si es mayor a 0, se hace el calculo de promedio
else: 
    promedio_impares = 0 # si no hay impares, promedio es 0
# mostramos los resultados de la consigna
if cantidad_pares == 0: # si no hay pares, mostramos mensaje de eso
    print("No se ingresaron números pares.")
else:
    print(f"La suma de los números pares es: {suma_pares}")
    print(f"El conteo de los números pares es: {cantidad_pares}")
if cantidad_impares == 0: # si no hay impares, mostramos mensaje de eso tambien
    print("No se ingresaron números impares.")
else:
    print(f"El promedio de números impares: {promedio_impares:.2f}") # el :.2f es para mostrar el promedio con 2 decimales
    