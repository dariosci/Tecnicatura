// Tipos de Datos en JavaScript
/*
La sintaxis en lo que es comentarios
es muy similar a la de Java
realmente diriamos que es identica
*/

var nombre = 'Ariel'; //Tipo String
console.log( nombre);
var numero = 3000; //Tipo numerico
console.log(numero);
var objeto = { //Tipo Object
    nombre: 'Ariel',
    apellido: 'Betancud',
    telefono: "2614567893"
}; //Tipo Object
console.log(objeto);

//Tipo de datos booleano
var bandera = true; //Tipo booleano
console.log(typeof bandera);

//Tipo de datos funcion
function miFuncion() {} //Tipo function
console.log(typeof miFuncion);

//Tipo de datos simbolo
var simbolo = Symbol("Mi simbolo"); //Tipo simbolo
console.log(simbolo);

//Tipo de dato clase
class Persona {
    constructor(nombre, apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
    }
} //Tipo clase
console.log(typeof Persona);

//Tipo de dato undefined
var x; //Tipo undefined
console.log(x);
x = undefined; 
console.log(typeof x);

//null: significa ausencia de valor
var y = null; //null no es un tipo de dato, pero su origen es un tipo object
console.log(typeof y);

//Tipo de dato array y empty string
var autos = ['Citroen', 'Audi', 'BMW', 'Ford']; //Tipo array
console.log(autos);
console.log(typeof autos); //Preguntamos el tipo de dato es:

var z = ''; //Tipo string vacio
console.log(z); //cadena vacia
console.log(typeof z); //Preguntamos el tipo de dato es:

