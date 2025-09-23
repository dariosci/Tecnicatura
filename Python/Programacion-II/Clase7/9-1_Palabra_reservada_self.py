# 9.1 Palabra reservada self y atributos de instancia 
# 9.7 Método init Dunder con argumentos variables
# 9.8 Encapsulamiento Parte 1
# 9.9 Encapsulamiento Parte 2
class Persona: # Creamos una clase
    def __init__(self, nombre, apellido, dni, edad, *args, **kwargs): # Se lo llama metodo Init Dunder
        self.nombre = nombre
        self.apellido = apellido
        self._dni = dni # Este atributo está encapsulado de manera sugerida
        self.edad = edad
        self.args = args
        self.kwargs = kwargs
        
    def mostrar_detalle(self): # self es igual a this (en JS)
        print(f'La clase Persona tiene los siguientes datos: {self.nombre} {self.apellido} {self._dni} {self.edad}, la dirección es: {self.args}, los datos importates son: {self.kwargs}')
        
persona1 = Persona('Ariel', 'Betancud', 32456987, 40) # Necesitamos enviar argumentos
print(f'El objeto1 de la clase persona: {persona1.nombre} {persona1.apellido}. Su edad es: {persona1.edad}') # la tarea
persona2 = Persona('Osvaldo', 'Giodanini', 30321456, 45)
print(f'El objeto2 de la clase persona: {persona2.nombre} {persona2.apellido}. Su edad es: {persona2.edad}') 
persona1.mostrar_detalle() # La referencia en este caso se pasa de manera automática
persona2.mostrar_detalle()

# Persona.mostrar_detalle() # Debemos pasarle una referencia para el self o dará error. por ej: Persona.mostrar_detalle(persona1)

# 9.2 Crear atributos desde un objeto
persona1.telefono = '44465656565'
print(f'Este es el telefono de: {persona1.nombre} {persona1.telefono}') # Hemos creado un atributo de un objeto

# print(persona2.telefono) el objeto persona2 no tiene este atributo, da error
persona3 = Persona('Rogelio', 'Romero', 35789456, 22, 'Telefono', '2614445557', 'Calle Lopez', 823, 'Manzana', 77, 'Casa', 18, Altura=1.83, Peso=105, CFavorito='Azul', Auto='Citroen', Modelo=2021)
persona3.mostrar_detalle()
# print(persona3._dni) # en pycharm no aparece ese atributo, en VSCode si aparece - igual no se puede utilizar (está encapsulado), esto dice que lo desconocemos
# persona3.__nombre # Está totalmente encapsulado con doble guion bajo, tampoco deja cambiar los valores