"""
Crear una clase llamada Rectangulo, debe tener 2 atributos: altura y base
el nombre del metodo sera calcular area utilizando la formula:
area = base * altura
el usuario y los objetos deben ser tres
"""
class Rectangulo:
    def __init__(self, altura, base):
        self.altura = altura
        self.base = base
    def calcular_area(self):
        print(f"El Área del Rectangulo es: {self.base * self.altura}")
print("Ingrese altura y base para calcular el Rectangulo 1")
rectangulo1 = Rectangulo(altura=0, base=0)
rectangulo1.altura = float(input("Altura: "))
rectangulo1.base = float(input("Base: "))
rectangulo1.calcular_area()
print("----------------------------------------------------")
print("Ingrese altura y base para calcular el Rectangulo 2")
rectangulo2 = Rectangulo(altura=0, base=0)
rectangulo2.altura = float(input("Altura: "))
rectangulo2.base = float(input("Base: "))
rectangulo2.calcular_area()
print("----------------------------------------------------")
print("Ingrese altura y base para calcular el Rectangulo 3")
rectangulo3 = Rectangulo(altura=0, base=0)
rectangulo3.altura = float(input("Altura: "))
rectangulo3.base = float(input("Base: "))
rectangulo3.calcular_area()
print("----------------------------------------------------")