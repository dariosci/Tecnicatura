'''
Ejercicio 4:
Haremos un programa que cuando el usuario ingrese su edad le diga, o imprima la etapa de su vida en una breve oración.
0 a 10 = La infancia es increíble y bella.
10 a 19 = Tienes muchos cambios, mucho estudiar.
20 a 29 = Amor y comienza el trabajo.
30 a 39 = Disfrutar de tus hijos y tu trabajo.
40 a 49 = La cresta de la ola.
50 a 59 = Reflexiona sobre tu vida y disfruta de tus nietos.
60 a 69 = Disfruta de la vida, ya has trabajado mucho.
70 en adelante = Vive el dia a dia como nunca!
'''

edad = int(input("Ingrese su edad: "))
if 0 <= edad < 10:
    mensaje = "La infancia es increíble y bella."
elif 10 <= edad < 19:
    mensaje = "Tienes muchos cambios, mucho estudiar."
elif 20 <= edad < 29:
    mensaje = "Amor y comienza el trabajo."
elif 30 <= edad < 39:
    mensaje = "Disfrutar de tus hijos y tu trabajo."
elif 40 <= edad < 49:
    mensaje = "La cresta de la ola."
elif 50 <= edad < 59:
    mensaje = "Reflexiona sobre tu vida y disfruta de tus nietos."
elif 60 <= edad < 69:
    mensaje = "Disfruta de la vida, ya has trabajado mucho."
elif edad >= 70:
    mensaje = "Vive el dia a dia como nunca!"
else:
    mensaje = "Edad no válida." 
print(f"Tu edad es: {edad}, {mensaje}")