numbers = [1, 2, 3, 4, 5]
for n in numbers:
    print(n)
    if n == 3: # con esta condicion termina antes el ciclo y no ejecuta el else
        break
else: # al terminar
    print('Esto se terminó')
    
# con lista vacia
numbers2 = []
for n in numbers2:
    print(n)
else: # con lista vacia se sigue mostrando el else
    print('Esto se terminó') 
# para que no se ejecute el else, hay que poner una condicion dentro del for antes que termine. En el ejemplo de lista 
# vacia terminaba inmediatamente y se ejecuta el else
