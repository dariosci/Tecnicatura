class Vehiculo:
    '''
    Definir una clase padre llamada Vehiculo y dos clases hijas llamadas
    Auto y Bicicleta, las cuales heredan de la clase Vehiculo. La clase
    padre debe tener los siguientes atributos y métodos:
    
    Vehiculo (clase padre)
    -Atributos(color, ruedas)
    -Metodos(__init__() y __str())
    
    Auto(clase hija de Vehiculo)
    -Atributos(velocidad (km/h))
    -Metodos(__init__(color, ruedas, velocidad) y __str__())
    
    Bicicletas(clase hija de Vehiculo)
    -Atributos(tipo(urbana/montaña/etc.))
    -Metodos(__init__(color, ruedas, tipo) y __str__())
    
    Crear un objetos de cada clase
    '''
    def __init__(self, color, ruedas):
        self._color = color
        self._ruedas = ruedas
    
    @property
    def color(self): # Método Getter
        return self._color
    
    @color.setter
    def color(self, color): # Método Setter
        self._color = color
    
    @property
    def ruedas(self): # Método Getter
        return self._rueda
    
    @ruedas.setter
    def ruedas(self, ruedas): # Método Setter
        self._ruedas = ruedas
    
    def __str__(self):
        return f'Color: {self._color}, Ruedas: {self._ruedas}'

class Auto(Vehiculo):
    def __init__(self, color, ruedas, velocidad):
        super().__init__(color, ruedas)
        self._velocidad = velocidad
    
    def __str__(self):
        return f'{super().__str__()}, Velocidad(km/h): {self._velocidad}'

    @property
    def velocidad(self): # Método Getter
        return self._velocidad
    
    @velocidad.setter
    def velocidad(self, velocidad): # Método Setter
        self._velocidad = velocidad
        
class Bicicleta(Vehiculo):
    def __init__(self, color, ruedas, tipo):
        super().__init__(color, ruedas)
        self._tipo = tipo
    
    def __str__(self):
        return f'{super().__str__()}, Tipo: {self._tipo}' 

    @property
    def tipo(self): # Método Getter
        return self._tipo
    
    @tipo.setter
    def tipo(self, tipo): # Método Setter
        self._tipo = tipo

#Primer Objeto: Vehiculo (Padre)
vehiculo1 = Vehiculo('Rojo', 4)
print(vehiculo1)
#Segundo Objeto: Auto (Hija)
auto1 = Auto('Blanco', 4, 120)
print(auto1)
#Tercer Objeto: Bicicleta (Hija)
bicicleta1 = Bicicleta('Negro', 2, 'MontainBike')
print(bicicleta1)