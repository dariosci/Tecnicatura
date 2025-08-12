'''
Ejercicio 7: Dadas las horas trabajadas de 5 personas y la tarifa de pago.
Calcular el salario y la sumatoria de todos los salarios.
'''
suma = 0 # inicializamos suma. donde se acumularán los salarios
for i in range(5):
    print("Salario del empleado", i + 1) # indicamos el empleado actual
    print("-------------------------")
    horas = float(input("Ingrese las horas trabajadas: ")) # solicitamos las horas trabajadas
    tarifa = float(input("Ingrese la tarifa por hora:")) # solicitamos la tarifa por hora
    salario = horas * tarifa # hacemos el calculo del salario
    print(f"El salario es: ${salario:.2f}") # mostramos el salario del empleado actual con 2 decimales
    suma += salario # acumulamos el salario al global
    print("=========================")
print(f"La suma de todos los salarios es: ${suma:.2f}") # mostramos la suma total de los salarios