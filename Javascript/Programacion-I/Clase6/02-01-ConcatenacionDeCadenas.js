{{
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

}} //Llaves para que funcione Quokka