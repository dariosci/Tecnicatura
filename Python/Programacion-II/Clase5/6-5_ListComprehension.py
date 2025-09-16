# List Comprehension ó Comprensión de listas
names = ["Paolo", "Rodrigo", "Lupe", "Pepe"]
alongP = [p for p in names if p[0] == 'P'] # Esto regresa una nueva lista
print(alongP)

bottleC = [{"name" : "Quilmes", "country" : "Argentina"},
           {"name" : "Corona", "country" : "Mexico"},
           {"name" : "Stelle Artois", "country" : "Belgica"},
           ]
Arg = [b for b in bottleC if b["country"]== "Argentina"]
print(Arg)
print(bottleC)