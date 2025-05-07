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