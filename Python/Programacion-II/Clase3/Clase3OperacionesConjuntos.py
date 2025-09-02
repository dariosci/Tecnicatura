conjunto2 = set() # la unica manera de inicializar un conjunto vacio es con la función set()
conjunto1 = {'bye', } # para inicializar un conjunto con llaves, tiene que tener al menos un elemento
conjunto2.add(7)
conjunto2.add('Hola')
conjunto1.add('Hola')

# CLASE 3
# Operaciones en Conjuntos
conjunto3 = conjunto1 | conjunto2 # La linea une los dos conjuntos
print(conjunto3)

conjunto3 = conjunto1 - conjunto2 # Asigna el valor que está en el conjunto1 y no en el conjunto2
print(conjunto3)
conjunto3 = conjunto2 - conjunto1
print(conjunto3)

conjunto3 = conjunto1 ^ conjunto2 # elementos que no comparten o que son diferentes entre ambos
print(conjunto3)

conjunto3 = conjunto1 | conjunto2
print(conjunto2.issubset(conjunto3)) # Aquí preguntamos si un conjunto es un subconjunto dentro de otro
print(conjunto1.issubset(conjunto3))
print(conjunto3.issubset(conjunto1))
print(conjunto3.issubset(conjunto2))

print(conjunto3.issuperset(conjunto1)) # Preguntamos si los elementos del conjunto1 estan dentro del 3
print(conjunto3.issuperset(conjunto2)) # Si es verdadero quiere decir que el conjunto3 es un superconjunto
print(conjunto2.issuperset(conjunto3))

# Como saber si ambos conjuntos son disconexos, esto es si no comparten elementos en comun
print(conjunto1.isdisjoint(conjunto2)) # No hay cosas en común

# Convertir un conjunto en totalmente inmutable
conjunto1 = frozenset # Esto hace que el conjunto sea totalmente inmutable
# No se puede agregar, modificar ni eliminar elementos del conjunto
