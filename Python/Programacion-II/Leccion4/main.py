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
Sintaxis de range (inicio<opcional>, fin<requerido>, incremento<opcional>)

Ejercicio 1: Iterar un rango de 0 a 10 e imprimir números divisibles entre 3
Ejemplo de ejecución: 0,3,6,9

Ejercicio 2: Crear un rango de números de 2 a 6 e imprimelos
Ejemplo de ejecución: 2,3,4,5,6

Ejercicio 3: Crear un rango de 3 a 10 pero con incremento de 2 en 2, en lugar de 1 en 1
Ejemplo de ejecución: 3,5,7,9
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