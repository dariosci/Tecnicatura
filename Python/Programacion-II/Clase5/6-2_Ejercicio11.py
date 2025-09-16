# Ejercicio 11: Agenda telefónica
# Hacer un programa que simule una agenda de contactos. Crear un
# diccionario donde la clave sea el nombre de usuario y el valor 
# sea el telefono, el programa tendrá el siguiente menú de opciones:
#   1. Nuevo contacto
#   2. Borrar contacto
#   3. Ver contactos existentes
#   4. Salir

agenda = {}

while True:
    print("-----------------------------------")
    print("AGENDA TELEFONICA")
    print("-----------------------------------")
    print("1. Nuevo Contacto")
    print("2. Borrar Contacto")
    print("3. Ver contactos existentes")
    print("4. Salir")
    opcion = int(input("Elija una opción: "))
    match opcion:
        case 1:
            clave = input("Ingrese Nombre: ")
            telefono = input("Ingrese Telefono: ")
            agenda[clave] = telefono
            print("-----------------------------------")
            print("Contacto Agregado con exito!")
        case 2:
            clave = input("Ingrese el Contacto que quiere borrar: ")
            agenda.pop(clave)
            print("-----------------------------------")
            print("Contacto Eliminado")
        case 3:
            print("-----------------------------------")
            print("Contactos: ")
            if agenda == {}:
                print ("No hay contactos para mostrar")
            else:
                for clave, telefono in agenda.items():
                    print(clave, telefono)
            print("-----------------------------------")
        case 4:
            print("-----------------------------------")
            print("Saliendo...")
            break
