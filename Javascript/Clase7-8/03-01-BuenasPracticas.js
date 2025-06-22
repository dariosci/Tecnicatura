{{

// CLASE 7 - VIDEO 1
let x, y; // se pueden crear varias variables dentro de una misma linea
x = 17, y = 21; // se pueden asignar valores a varias variables en la misma linea
let z = x + y; // se asigna el valor de la operacion
console.log(z);

let _1num = 31; //No utilizar numeros para iniciar el nombre de una variable
let rompiendo = "rompe"; // No utilizar palabras reservadas como nombre

console.log(_1num);
console.log(rompiendo);

// Hoy ya no se usa var, se utiliza let y cons
let nombre2 = "Pedro";
console.log(nombre2);

const apellido2 = "Lepes";
//apellido2 = "perez"; //la constante no puede ser modificada
console.log(apellido2);

//Ampliando el uso de var let y const
/*
Con var puedes reasignar en cualquier momento
esta forma parte del ambito global
Un error es que sobreescriba
*/

var nombre = 'Ariel';
nombre = 'Osvaldo';
console.log(nombre);

function saludar() {
    var nombre3 = 'Natalia';
    console.log(nombre3);
}
//console.log(nombre3); //Aqui no lee el dato en la funcion 


if (true){
    var edad = 34;
    console.log(edad);
}
console.log(edad); //En la funcion funciono correctamente, en la estructura if fallo

/*
let: esta puede ser reasignada en cualquier momento
la diferencia es que su ambito es de bloque.
solo disponible dentro de un bloque de llaves
o dentro de una funcion
*/

function saludar2(){
    let nombre3 = 'Ariel';
    console.log(nombre3);
}
//console.log(nombre3);

if (true){
    let edad3 = 33;
    console.log(edad3);
}
//console.log(edad3);

/*
const se utiliza para valores constantes que no pueden ser reasignadas
*/

const fechaNacimiento = 2006;
console.log(fechaNacimiento);
//fechaNacimiento = 2003; //error. no se puede asignar otro valor a una constante
//console.log(fechaNacimiento);

}}