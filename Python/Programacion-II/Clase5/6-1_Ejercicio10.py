# Ejercicio 10: No repetir caracteres
# Hacer un programa que pida una cadena por teclado. luego
# meter los caracteres en una lista sin repetir caracteres

lista = []
cadena = input("Ingrese una cadena: ")

for letra in cadena:
    lista.append(letra)
lista = list(set(lista))
print(lista)