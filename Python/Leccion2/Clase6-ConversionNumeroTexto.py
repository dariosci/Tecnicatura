# Conversion de numero a texto

num = int(input("Ingrese un numero en el rango del 1 y 3: "))
numTexto = ""
if num == 1:
    numTexto = "Número uno"
elif num == 2:
    numTexto = "Número dos"
elif num == 3:
    numTexto = "Número tres"
else:
    numTexto = "Has ingresado un número fuera de rango"
print(f"El número ingresado es: {num} - {numTexto}")