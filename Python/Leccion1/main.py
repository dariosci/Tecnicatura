'''
miVariable = 3
print(miVariable)
miVariable = "Hola a todos los estudiantes de la tecnicatura"
print(miVariable)
miVariable = 3.5
print(miVariable)
x = 10
y = 2
z = x + y
print(id(x))
# Las literales se escriben x240, la variable y = x984, la variable z = x304
print(id(y))
print(id(z))

# Tipos int, float, str, bool
x = 10
print(x)
print(type(x))
x = 14.5
print(x)
print(type(x))
x = "Hola alumnos"
print(x)
print(type(x))
x = True
print(x)
print(type(x))
x = False
print(x)
print(type(x))

# Manejo de cadenas (Strings)
miGrupoFavorito = "The Letter Black"
caracteristicas = "The Best Rock Band"
print("Mi grupo favorito es:", miGrupoFavorito, caracteristicas)

# numero1 = "7"
# numero2 = "8"
# print(int(numero1) + int(numero2))

# Tipos Booleanos (bool)
miBooleano = 3 > 2
print(miBooleano)

if miBooleano:
    print("La condicion es verdadera")
else:
    print("La condicion es falsa")

# Procesar la entrada de usuario
# funcion input
# resultado = input("Ingrese un numero: ") #regresa un string

# Conversion de la entrada de datos
numero1 = int(input("Ingrese primer numero: "))
numero2 = int(input("Ingrese segundo numero: "))
suma = numero1 + numero2
print("La suma es:", suma)
'''

"""
# Operadores aritmeticos
operandoA = 8
operandoB = 5
suma = operandoA + operandoB
print("El Resultado de la suma es:", suma) # concatenacion
print(f"El Resultado de la suma es: {suma}") # interpolacion

resta = operandoA - operandoB
print(f"El Resultado de la resta es: {resta}")

multiplicacion = operandoA * operandoB
print(f"El Resultado de la multiplicacion es: {multiplicacion}")

division = operandoA / operandoB
print(f"El Resultado de la division es: {division}")

division = operandoA // operandoB # division entera
print(f"El Resultado de la division (int) es: {division}")

modulo = operandoA % operandoB # residuo
print(f"El Resultado de la division o residuo (modulo) es: {modulo}")

exponente = operandoA ** operandoB # potencia
print(f"El Resultado de la potencia es: {exponente}")

raiz = operandoA ** (1/2) # raiz cuadrada
print(f"El Resultado de la raiz cuadrada es: {raiz}")
"""

"""
# Ejercicio: Rectángulo
alto = int(input("Proporciona el alto del rectángulo: "))
ancho = int(input("Proporciona el ancho del rectángulo: "))
area = alto * ancho
perimetro = (alto + ancho) * 2
print(f"El área del rectángulo es: {area}")
print(f"El perímetro del rectángulo es: {perimetro}")
"""

"""
# Operadores de Asignacion
miVariable3 = 10
print(miVariable3)

# Operadores de reasignacion
miVariable3 = miVariable3 + 1
print(miVariable3)

miVariable3 += 1 # suma y asignacion
print(miVariable3)

# miVariable3 = miVariable3 - 2
miVariable3 -= 2 # resta y asignacion
print(miVariable3)

# miVariable3 = miVariable3 * 3
miVariable3 *= 3 # multiplicacion y asignacion
print(miVariable3)

# miVariable3 = miVariable3 / 2
miVariable3 /= 2 # division y asignacion
print(miVariable3)
"""

"""
# Operadores de comparación
d = 4
b = 6
resultado = d == b # Comprobamos si son iguales
print(resultado)

# Operador diferente
resultado = d != b # Comprobamos si son diferentes
print(resultado)

# Operador mayor que
resultado = d > b # Comprobamos si d es mayor que b
print(resultado)

# Operador menor que
resultado = d < b # Comprobamos si d es menor que b
print(resultado)

# Operador menor o igual que
resultado = d <= b # Comprobamos si d es menor o igual que b
print(resultado)

# Operador mayor o igual que
resultado = d >= b # Comprobamos si d es mayor o igual que b
print(resultado)
"""

'''
# Ejercicio 1 - Número par o impar
num = int(input("Ingrese un número entero: "))
print(f"El residuo de la division es: {num % 2}")
if num % 2 == 0:
    print(f"El número {num} es par.")
else:
    print(f"El número {num} es impar.")
'''

'''
# Ejecicio 2: Determinar si es mayor de edad
mayoriaEdad = 18
edad = int(input("Ingrese su edad: "))
if edad >= mayoriaEdad:
    print(f"Su edad es: {edad} años, usted es mayor de edad.")
else:
    print(f"Su edad es: {edad} años, usted es menor de edad.")
'''

'''
# Operadores lógicos
# and, or, not

# Operador and
a = False
b = False
resultado = a and b
print(resultado)

# Operador or
resultado = a or b
print(resultado)

# Operador not
resultado = not a
print(resultado)
'''

'''
# Ejercicio 1: Valor dentro de un rango

num = int(input("Ingrese un número dentro del rango 0 al 5: "))
minimo = 0
maximo = 5
dentroRango = num >= minimo and num <= maximo
if dentroRango:
    print(f"El número {num} está dentro del rango de {minimo} a {maximo}")
else:
    print(f"El número {num} está fuera del rango de {minimo} a {maximo}")
'''

'''
# Ejercicio 2: Operador or, Operador not

vacaciones = True
dia_libre = True

if not(vacaciones or dia_libre):
    print("Tiene que trabajar")
else:
    print("Puede ir al juego de su hijo")
'''

'''
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
'''

'''
# Ejercicio 4: El mayor de dos numeros
num1 = int(input("Digite el valor para el numero1: "))
num2 = int(input("Digite el valor para el numero2: "))

if num1 > num2:
    print(f"El numero mayor es: {num1}")
else:
    print(f"El numero mayor es: {num2}")
'''

"""
# Ejercicio 5: Tienda de Libros

print("Ingrese los datos del libro:")
nombre = input("Ingrese nombre del libro: ")
id = input("Ingrese el ID del libro: ")
precio = float(input("Ingrese el precio del libro: "))
envio_gratis = input("¿Tiene envio gratis? (si/no): ")
if envio_gratis.lower() == "si":
    envio_gratis = True
elif envio_gratis.lower() == "no": 
    envio_gratis = False
else:
    print("Volar incorrecto. Debe Escribir 'si' o 'no'")
    envio_gratis = False
print("---------------------------------------------")
print(f'''
        Nombre: {nombre}
        ID: {id}
        Precio: ${precio}            
        Envio gratis: {envio_gratis}
''')
"""

