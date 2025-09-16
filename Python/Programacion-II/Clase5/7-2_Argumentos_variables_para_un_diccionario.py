def listarTerminos(**terminos): # Lo más utilizado es **kwargs para recibir argumentos clave/valor
    for llave, valor in terminos.items():
        print(f"{llave} : {valor}")
        
listarTerminos() # No recibe nada, nada se va a mostrar
listarTerminos(IDE='Integrated Develoment Enviroment', PK='Primary Key') # La llave no lleva comillas, el valor puede ser cualquier tipo de dato
#listar(10='Leonel Messi') # No puede ponerse un numero como llave

