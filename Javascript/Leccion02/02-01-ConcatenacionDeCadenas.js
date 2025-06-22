var nombre = "Jose";
var apellido = " Montes";
var nombreCompleto = nombre + " " + apellido; //Concatenacion de cadenas
console.log(nombreCompleto); //Imprimimos el nombre completo
var nombreCompleto2 = "Ariel" + " " + "Betancud"; //Interpolacion de cadenas
console.log(nombreCompleto2); //Imprimimos el nombre completo 2
var juntos = nombre + 219; //Lee de izquierda a derecha siguiendo la cadena lee el numero como str
console.log(juntos); // Jose219
juntos = nombre + 78 + 17; 
console.log(juntos); // Jose7817
juntos = 78 + 17 + nombre; //Lee de izquierda a derecha siguiendo la cadena lee el numero como str
console.log(juntos); // 95Jose
nombre += apellido; //Tercera Concatenacion usando el operador simplificado +=
console.log(nombre); // JoseMontes



// CLASE 7 - VIDEO 1
let x, y; // se pueden crear varias variables dentro de una misma linea
x = 17, y = 21; // se pueden asignar valores a varias variables en la misma linea
let z = x + y; // se asigna el valor de la operacion
console.log(z);

let _1num = 31; //No utilizar numeros para iniciar el nombre de una variable
let rompiendo = "rompe"; // No utilizar palabras reservadas como nombre

console.log(_1num);
console.log(rompiendo);

