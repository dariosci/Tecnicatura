# Pilas usando listas
pila = [1, 2, 3]

# Agregar elementos a la pila por el final
pila.append(4)
pila.append(5)
print(pila)

# Sacamos elementos desde el final
#pila.pop() # Elimina el ultimo elemento de la lista
#print(pila) # Mostramos la pila sin el último elemento
elementoBorrado = pila.pop() # Quita el elemento y lo guarda en una variable
print(f'Sacamos el elemento: {elementoBorrado}')
print(f'La pila ahora quedó así: {pila}')