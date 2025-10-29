from Cuadrado import Cuadrado
from Rectangulo import Rectangulo

cuadrado1 = Cuadrado(5, 'Azul')
print(f'Alto: {cuadrado1.alto}')
print(f'Ancho: {cuadrado1.ancho}')
print(f'Calculo del Area del Cuadrado: {cuadrado1.calcular_area()}')

rectangulo1 = Rectangulo(5, 7, 'Rojo')
print(f'Alto: {rectangulo1.alto}')
print(f'Ancho: {rectangulo1.ancho}')
print(f'Calculo del Area del Rectangulo: {rectangulo1.calcular_area()}')

# MRO = Method Resolution Order
print(Cuadrado.mro())
print(Rectangulo.mro())

#prueba encapsulamiento y __str__()
print(cuadrado1)
print(rectangulo1)