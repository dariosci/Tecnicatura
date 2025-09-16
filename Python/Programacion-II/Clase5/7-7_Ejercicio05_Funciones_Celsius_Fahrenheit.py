# Ejercicio 5: Convertidor de temperaturas
# Realizar dos funciones para convertir de grados celsius a
# fahrenheit y viceversa
# Investigar las formulas

# Funcion que convierte de °F a °C
def a_celius(grados_f):
    return (grados_f - 32) * 5 / 9

# Funcion que convierte de °C a °F
def a_fahrenheit(grado_c):
    return grado_c * 9 / 5 + 32

while (True):
    print("Convertidor de Grados")
    print("-------------------------")
    print("1- Convertir de Fahrenheit a Celsius")
    print("2- Convertir de Celsius a Fahrenheit")
    print("3- Salir")
    opcion = int(input("Seleccione una opción: "))
    if opcion == 1:
        grados = float(input("Ingrese los grados °F: "))
        resultado = a_celius(grados)
        print(f"{grados}°F = {resultado}°C")
        break
    elif opcion == 2:
        grados = float(input("Ingrese los grados °C: "))
        resultado = a_fahrenheit(grados)
        print(f"{grados}°C = {resultado}°F")
        break
    elif opcion == 3:
        break

        
    