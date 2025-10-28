'''
# Comenzamos con Funciones
#mi_funcion() # No se puede llamar una funcion antes de definir
# Definimos una funcion
def mi_funcion():
    print('Saludos a todos los alumnos de la Tecnicatura')

mi_funcion() # Estamos llamando a la función
mi_funcion() # Se puede llamar a una función N cantidad de veces
'''

def no_repetir_caracteres(texto):
    caracteres_vistos = []
    for char in texto:
        if char not in caracteres_vistos:
            caracteres_vistos.append(char)
    return ''.join(caracteres_vistos)

print(no_repetir_caracteres("programacion"))