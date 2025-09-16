# Ejercicio 4: Calculadora de impuestos
# Crear una función para calcular el total de un pago incluyendo
# un impuesto aplicado. (IVA)
# Formula: pago_total = pago_sin_impuesto + pago_sin_impuesto * (impuesto / 100)
# Proporcione el pago sin impuesto: 1000
# Proporcione el monto del impuesto: 21%
# Pago con impuesto: xxxxx

# Creamos la funcion que calcula el total del pago incluyendo el impuesto
def pago_total(monto, impuesto):
    return monto + monto * (impuesto / 100)

monto = float(input("Ingrese precio: "))
impuesto = float(input("Ingrese porcentaje de impuesto: "))
a_pagar = pago_total(monto, impuesto)
print(f"Pago con impuesto: ${a_pagar}")
