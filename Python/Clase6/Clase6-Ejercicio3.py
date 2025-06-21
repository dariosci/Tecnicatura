'''
Ejercicio 3: 
Intercambiar el valor de dos variables.
Por ejemplo: 
a = 10   -->   a = 5
b = 5    -->   b = 10
'''
a = 10 # valor de a
b = 5 # valor de b
print(f"Valores iniciales: \n 'a': {a}\n 'b': {b}") # Imprimo los valores de a y b
aux = 0 # variable auxiliar
# Intercambio de valores
aux = a # Guardo valor de a en aux
a = b # Asigno valor de b a a
b = aux # Asigno valor de aux a b
print(f"Nuevos valores:\n 'a': {a}\n 'b': {b}") # Imprimo los nuevos valores de a y b