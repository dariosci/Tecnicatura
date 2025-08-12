'''
# Clase 1 - Listas

# lista = Ariel, Liliana, Natalia, Osvaldo
nombres = ['Naty', 'Osvaldo', 'Lily', 'Ariel']
print(nombres)
print(nombres[0])  # primer elemento
print(nombres[1])  # segundo elemento
print(nombres[3])  # ultimo elemento
# ultimo elemento - otro metodo: con numeros negativos desde el ultimo al primero
print(nombres[-1])
print(nombres[-2])  # penultimo elemento

print(nombres[0:2])  # solo muestra el indice 0, 1 pero no el indice 2
# ir del inicio de la lista al indice (sin incluirlo)
print(nombres[:3])  # Indices a mostrar 0, 1, 2
# Desde el indice indicado hasta el final
print(nombres[1:])
# Modificamos un valor
nombres[2] = 'Liliano'
nombres[0] = 'Natalia'
print(nombres)
# Iterar una lista
for nombre in nombres:
    print(nombre)
else:
    print('Se acabaron los elementos de la lista')

# Preguntamos cuantos elementos tiene
print(len(nombres))  # le pasamos como parametro la lista

# Agregamos un elemento
# la funcion append agrega un elemento al final (cola)
nombres.append('Marcelo')
print(nombres)

# Insertamos un elemento en un indice especifico
nombres.insert(1, 'Alberto')
print(nombres)
nombres.insert(3, 'Debora')
print(nombres)

# Eliminamos un elemento
nombres.remove('Alberto')
print(nombres)

# Eliminamos el último elemento
nombres.pop()
print(nombres)

# Eliminar un indice especifico
del nombres[2]
print(nombres)

# Eliminar, borrar o limpiar todos los elementos
nombres.clear()
print(nombres)

# Eliminar la lista
del nombres
#print(nombres)

# Ejercicio - Uso de Rangos
'''
'''
Sintaxis de range (inicio<opcional>, fin<requerido>, incremento<opcional>)

Ejercicio 1: Iterar un rango de 0 a 10 e imprimir números divisibles entre 3
Ejemplo de ejecución: 0,3,6,9

Ejercicio 2: Crear un rango de números de 2 a 6 e imprimelos
Ejemplo de ejecución: 2,3,4,5,6

Ejercicio 3: Crear un rango de 3 a 10 pero con incremento de 2 en 2, en lugar de 1 en 1
Ejemplo de ejecución: 3,5,7,9
'''
'''
# Ejecicio 1:
print('Rango de 0 a 10 con números divisibles entre 3')
for i in range(11):
    if i % 3 == 0:
        print(i)
        
# Ejercicio 2:
print('Rango con valores de inicio = 2 y fin = 6')
for i in range(2,7):
    print(i)
    
# Ejercicio 3:
print('Rango con valores de inicio = 3, fin = 10, incremento = 2')
for i in range(3,11,2):
    print(i)
'''

'''
# Clase 1 - Tuplas

# Definimos una Tupla
cocina = ('cuchara', 'cuchillo', 'tenedor') #se definen usando parentesis, a diferencia de las listas que se usan corchetes
print(cocina)
print(len(cocina))

# Acceder a un elemento, para esto utilizamos corchetes no parentesis
print(cocina[0])
# mostrar de manera inversa
print(cocina[-1])

# Acceder a un rango
print(cocina[0:2])

# Ejemplo
verdudas = ('papa',) # Una tupla necesita aunque sea de un elemento y una coma. De lo contrario sería un tipo str cadena
print(verdudas)

# Recorremos los elementos de una tupla
for cocinar in cocina:
    print(cocinar, end=' ') # print esta usando \n para saltos de lineas, usando end=' ' muestra los elemento en una sola linea separados por el espacio


# Modificar una tupla
#cocina[0] = 'plato' # No se puede cambiar el valor de una tupla
# vamos a ver como modificar una tupla (NO ES BUENA PRACTICA HACERLO)
cocinaLista = list(cocina) # convertimos cocina a una lista
cocinaLista[0] = 'Plato' # modificamos el valor del indice 0
cocina = tuple(cocinaLista) # volvemos a convertir cocina a tupla
print('\n', cocina) # mostramos nuevamente la tupla, esta vez agregamos el \n para quitar el end=' '

# Eliminar tupla
del cocina

# Ejercicio 4 - Tuplas y Listas
# Dada la siguiente tupla
tupla = (13, 1, 8, 3, 2, 5, 8) # Definimos la tupla
# Crear una lista que solo incluya los números menores a 5
# e imprimir por consola [1, 3, 2]
lista = [] # Definimos la lista

# ASI LO HICE YO
for i in range(len(tupla)): # Asignamos el rango por la longitud de la tupla e iteramos
    if tupla[i] < 5: # comparamos el valor de cada posicion de la tupla para ver si es menor a 5
        lista.append(tupla[i]) # Si es verdadero, asignamos el valor de la posicion i a la nueva lista
print(lista) # Imprimimos la nueva lista con los numeros menores a 5

lista.clear() # Limpio la lista para el algoritmo del profe
# ASI EL PROFE ARIEL
for elemento in tupla:
    if elemento < 5: # comparamos el valor de cada posicion de la tupla para ver si es menor a 5
        lista.append(elemento) # Si es verdadero, asignamos el valor de elemento a la nueva lista
print(lista) # Imprimimos la nueva lista con los numeros menores a 5
'''
