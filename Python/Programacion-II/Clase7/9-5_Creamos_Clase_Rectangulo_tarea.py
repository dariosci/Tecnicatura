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
        return self.base * self.altura

rectangulos = []

for i in range(3):
    print(f"\nRectángulo {i+1}:")
    base = float(input("Ingrese la base: "))
    altura = float(input("Ingrese la altura: "))
    rect = Rectangulo(base, altura)
    rectangulos.append(rect)

# Mostrar las áreas
for i, rect in enumerate(rectangulos, start=1):
    print(f"El área del rectángulo {i} es: {rect.calcular_area()}")
