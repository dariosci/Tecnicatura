# 10.1 Métodos: setter and getter parte 1 y 2
class Persona2:
    def __init__(self, nombre, apellido, edad):
        self._nombre = nombre
        self._apellido = apellido
        self._edad = edad
    
    def mostrar_detalles(self):
        print(f"Los datos a mostrar son los siguientes: {self._nombre} {self._apellido} {self._edad}")
    
    @property
    def nombre(self): # Método Getter
        print('Estamos utilizando el método get')
        return self._nombre
    
    @nombre.setter
    def nombre(self, nombre): # Método Setter
        print('Estamos utilizando el método set')
        self._nombre = nombre
    
    @property
    def apellido(self): # Método Getter
        print('Estamos utilizando el método get')
        return self._apellido
    
    @apellido.setter
    def apellido(self, apellido): # Método Setter
        print('Estamos utilizando el método set')
        self._apellido = apellido
    
    @property
    def edad(self): # Método Getter
        print('Estamos utilizando el método get')
        return self._edad
    
    @edad.setter
    def edad(self, edad): # Método Setter
        print('Estamos utilizando el método set')
        self._edad = edad

    def __del__(self):
        print(f"Persona2: {self._nombre} {self._apellido} {self._edad} ha sido eliminado")
    
if __name__ == '__main__': # 10.5 Comprobación del módulo principal en ejecución
    persona1 = Persona2('Ariel', 'Betancud', 41)
    print(persona1.nombre) # Llamamos al método getter
    print(persona1.apellido)
    print(persona1.edad)

    persona1.nombre = 'Juan Pedro' # Llamamos al método setter y guarda el dato nuevo
    print(persona1.nombre) # Otra vez con el método getter
    print(persona1.mostrar_detalles())

    #10.2 Atributos read-only (solo lectura)
    # Atributo read-only (solo lectura) seria la edad porque no tiene el método set
    #persona1.edad = 40 # El error lo dá cuando no tiene el metodo set (en este caso está comentado)
    #print(persona1.edad) 

    #10.3 Tarea: Con la clase Persona
    #Tarea: Crear tres objetos más, utilizando los métodos getter and setter 
    # para modificar, y mostrar con el método mostrar_detalles

    persona2 = Persona2('Dario', 'Scilipoti', 42)
    print(persona2.nombre)
    print(persona2.apellido)
    print(persona2.edad)
    persona2.nombre = 'Luciano'
    persona2.apellido = 'Scilipoti Lucchesi'
    persona2.edad = 13
    persona2.mostrar_detalles()

    persona3 = Persona2('Andrea', 'Lucchesi', 46)
    print(persona3.nombre)
    print(persona3.apellido)
    print(persona3.edad)
    persona3.nombre = 'Paulina'
    persona3.apellido = 'Ochoa'
    persona3.edad = 21
    persona3.mostrar_detalles()

    persona4 = Persona2('Pepe', 'Argento', 55)
    print(persona4.nombre)
    print(persona4.apellido)
    print(persona4.edad)
    persona4.nombre = 'Cosme'
    persona4.apellido = 'Fulanito'
    persona4.edad = 30
    persona4.mostrar_detalles()
    
    print(__name__)