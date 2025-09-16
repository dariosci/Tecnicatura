# Ejercicio 3: Función Recursiva
# Imprimir numero de 5 a 1 de manera descendente usando funciones recursivas
# puede ser cualquier valor positivo, por ejemplo, si pasamos 
# el valor de 5, debe imprimir:
# 5
# 4
# 3
# 2
# 1
# En caso de ser numero 3:
# 3
# 2
# 1
# Si se ingresan números negativos no imprime nada

def imprimir_numeros_recursivos(num):
    if num >= 1: # Caso Base
        print(num)
        imprimir_numeros_recursivos(num-1) # Caso Recursivo
    elif num == 0:
        return
    elif num < 0:
        print("Valor ingresado incorrecto")

# tarea        
num = int(input("Ingrese un número: "))
resultado = imprimir_numeros_recursivos(num)