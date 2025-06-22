//Ejercicio 1: Calcular estacion al año
/*
    Verano -> del 21/12 al 21/03 -> 1, 2, 3
    Otoño -> del 21/03 al 21/06 -> 4, 5, 6
    Invierno -> del 21/06 al 21/09 -> 7, 8, 9
    Primavera -> del 21/09 al 21/12 -> 10, 11, 12
    */

let mes = 8;
let estacion; //undefined
if (mes == 12 || mes == 1 || mes == 2) {
  estacion = "Verano";
} else if (mes == 3 || mes == 4 || mes == 5) {
  estacion = "Otoño";
} else if (mes == 6 || mes == 7 || mes == 8) {
  estacion = "Invierno";
} else if (mes == 9 || mes == 10 || mes == 11) {
  estacion = "Primavera";
} else {
  estacion = "Valor incorrecto";
}
console.log("El valor corresponde a la estación: " + estacion);

//Ejercicio 2: Hora del dia
let hora = 1;
let mensaje;
if (hora >= 7 && hora <= 15) {
  mensaje = "Trabajando en el Hospital";
} else if (hora > 15 && hora <= 18) {
  mensaje = "Trabajos particulares";
} else if (hora > 18 && hora < 19) {
  mensaje = "Tomando mediatarde";
} else if (hora >= 19 && hora < 21) {
  mensaje = "Conectado a las clases sincronicas";
} else if (hora >= 21 && hora < 22) {
  mensaje = "Cenando";
} else if (hora >= 22 && hora <= 24) {
  mensaje = "Yendo a dormir";
} else if (hora >= 1 && hora < 7) {
  mensaje = "durmiendo...";
} else {
    mensaje = "Valor incorrecto";
}
console.log(mensaje);

//Estructura switch (la sintaxis es igual a Java)
switch (mes){
    case 12: case 1: case 2:
        estacion = "Verano";
        break;
    case 3: case 4: case 5:
        estacion = "Otoño";
        break;
    case 6: case 7: case 8:
        estacion = "Invierno";
        break;
    case 9: case 10: case 11:
        estacion = "Primavera";
        break;
    default:
        estacion = "Valor incorrecto";
    }
console.log("El valor corresponde a la estación: " + estacion);