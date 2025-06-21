# Ejercicio 3: Rango entre 20 y 30 años
edad = int(input("Ingrese su edad: "))
""" # Primer intento
veinte = edad >= 20 and edad < 30
print(veinte)
treinta = edad >= 30 and edad < 40
print(treinta)
if veinte or treinta:
    if veinte:
        print("Estás en el rango de los 20 años")
    elif treinta:
        print("Estás en el rango de los 30 años")
else:
    print("No estás en el rango de los 20 a 30 años")
"""
# segundo intento
if (edad >= 20 and edad < 30) or (edad >= 30 and edad < 40):
    print("Estás en el rango de los 20 a 30 años")
else:
    print("No estás en el rango de los 20 a 30 años")

#Sintaxis simplificada del operador and
if (20 <= edad < 30) or (30 <= edad < 40):
    print("Estás en el rango de los 20 a 30 años")
else:
    print("No estás en el rango de los 20 a 30 años")