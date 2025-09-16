# Ejercicio 2: Funcion con * args para multiplicar
# Crear una funcion para multiplicar los valores recibidos
# de tipo numérico, utilizando argumentos variables *args
# como parámetro de la función y regresar como resultado
# la multiplicación de todos los valores pasados como argumento

def multiplicar(*numeros):
    resultado = 1
    for num in numeros:
        resultado *= num
    return resultado

print(multiplicar(3, 5, 15, 3))