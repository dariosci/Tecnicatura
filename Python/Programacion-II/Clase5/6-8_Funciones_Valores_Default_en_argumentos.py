# Valores por default
def sumar(a = 0, b = 0): #argumentos con valores default
    return a + b

resultado = sumar()
print(f"Resultado de la suma: {resultado}")
print(f"Resultado de la suma: {sumar(22, 66)}")