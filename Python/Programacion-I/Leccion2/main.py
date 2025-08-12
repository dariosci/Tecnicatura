# En esta clase veremos la sentencia if/else
'''condicion = True
if condicion == True:
    print("Condicion Verdadera")
elif condicion == False:
    print("Condicion Falsa")
else:
    print("Condicion sin especificar")
    '''

'''
# Conversion de numero a texto
num = int(input("Ingrese un numero en el rango del 1 y 3: "))
numTexto = ""
if num == 1:
    numTexto = "Número uno"
elif num == 2:
    numTexto = "Número dos"
elif num == 3:
    numTexto = "Número tres"
else:
    numTexto = "Has ingresado un número fuera de rango"
print(f"El número ingresado es: {num} - {numTexto}")
'''

'''
Ejercicio 1:
Debemos plasmar la expresi´n en una expresión algorítmica, o sea
hacerlo en código


a = float(input("Ingrese un número(a): "))
b = float(input("Ingrese un número(b): "))
c = float(input("Ingrese un número(c): "))

resultado = (a ** 3 * (b ** 2 - 2 * a * c)) / (2 * b)

print(f"El resultado de la operación es: {resultado}")
'''

condicion = False
# 
# if condicion:
#     print("Condicion Verdadera")
# else:
#     print("Condicion Falsa")

# SIMPLIFICADA
print("Condicion Verdadera" if condicion else "Condicion Falsa")