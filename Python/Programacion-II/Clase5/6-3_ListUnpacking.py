# Desempaquetado de listas o list Unpacking
def show(name, lastName):
    print(name + ' ' + lastName)

# con Listas
person = ['Ariel', 'Betancud']
show(person[0], person[1]) # Pasamos uno por uno los datos de la lista a la funcion
show(*person) #esto es lo mismo que lo anterior pero le pasamos todos los datos juntos

# con Tuplas
person2 = ('Osvaldo', 'Giordanini') # desempaquetamos a traves de una tupla
show(*person2)

# con Diccionarios
person3 = {'lastName' : 'Lucero', 'name' : 'Natalia'}
show(**person3) # Doble ** por clave/valor. Si hay uno solo muestra la clave
