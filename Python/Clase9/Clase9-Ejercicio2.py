# Clase 9 - Ejercicios
# Ejercicio 2: Suma de Números
# Calcular la suma de N primeros numeros

num = int(input("Ingrese un número: "))
suma = 0

for i in range(1, num + 1):
    suma += i
print(f"La suma de los números del 1 al {num} es: {suma}")