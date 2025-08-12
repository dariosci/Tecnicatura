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


