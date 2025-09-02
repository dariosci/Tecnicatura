# Repaso de set o conjunto
# para definir un conjunto
conjunto2 = set() # la unica manera de inicializar un conjunto vacio es con la función set()
conjunto1 = {'bye', } # para inicializar un conjunto con llaves, tiene que tener al menos un elemento
conjunto2.add(7)
conjunto2.add('Hola')
print(conjunto2)
#conjunto1.add(7, 8, 9) # error, solo se puede agregar de un elemento con la función add
conjunto1.add('Hola')
print(conjunto1)
print(3 not in conjunto1) # Preguntamos si el numero 3 NO está en el conjunto1. Devuelve un booleano

# Como hacer la igualdad de dos conjuntos
print(conjunto1 == conjunto2) # Nos devuelve como respuesta un booleano