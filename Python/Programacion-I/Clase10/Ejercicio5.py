import math
resultado = 0
num = int(input("Ingresa un número: "))
while num < 0:
    num = int(input("Ingresa un número: "))
else:
    resultado = math.factorial(num)    
print(f"El factorial de {num} es: {resultado}")