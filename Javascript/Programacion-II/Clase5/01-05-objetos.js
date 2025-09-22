let persona = { // se crea una referencia de memoria
    nombre: 'Carlos',
    apellido: 'Gil',
    email: 'cgil@gmail.com',
    edad: 28,
    idioma: 'es',
    get lang(){
        return this.idioma.toUpperCase(); //Convierte las minusculas a mayusculas
    },
    set lang(lang){
        this.idioma = lang.toUpperCase();
    },
    nombreCompleto: function(){ // método o funcion en JS
        return this.nombre + ' ' + this.apellido;
    },
    get nombreEdad(){ //Este es el metodo get
        return 'El nombre es: ' + this.nombre + ', Edad: ' + this.edad;
    }    
}
console.log('Comenzamos a utilizar el metodo get')
console.log(persona.nombreEdad);

console.log('Comenzamos con el metodo get y set para idiomas');
persona.lang = 'en';
console.log(persona.lang);

function Persona3(nombre, apellido, email){ // constructor
    this.nombre = nombre;
    this.apellido = apellido;
    this.email = email;
    this.nombreCompleto = function(){
        return this.nombre + ' ' + this.apellido;
    }
}
let padre = new Persona3('Leo', 'Lopez', 'lopezl@gmail.com');
padre.nombre = 'Luis'; // modificamos el nombre
padre.telefono = '54926182828211'; // agregamos nueva propiedad a padre, en madre no existe
console.log(padre);
console.log(padre.nombreCompleto()); // utilizamos la funcion
let madre = new Persona3('Laura', 'Contrera', 'contreral@gmail.com');
console.log(madre);
console.log(madre.telefono); // la propiedad no está definida
console.log(madre.nombreCompleto());

// Diferentes formas de crear objetos
// caso objeto 1
let miObjeto = new Object(); // Esta es una opcion formal
// caso objeto 2
let miObjeto2 = {}; // Esta opcion es breve y recomendada

// caso String 1
let miCadena1 = new String('Hola'); // Sintaxis formal
// caso String 2
let miCadena2 = 'Hola'; // Esta es la sintaxis simplificada y recomendada

// caso con numeros 1
let miNumero = new Number(1); // Es formal no recomendable
// caso con numeros 2
let miNumero2 = 1; // Sintaxis recomendada

// caso boolean 1
let miBoolean = new Boolean(true); // Formal
// caso boolean 2
let miBoolean2 = true; // Sintaxis recomendada

// caso Arreglos 1
let miArreglo1 = new Array(); // Formal
// caso Arreglos 2
let miArreglo2 = []; // Sintaxis recomendada

// caso funcion 1
let miFuncion1 = new function(){}; // Todo despues de new es considerado objeto
// caso funcion 2
let miFuncion2 = function(){}; // Notacion simplificada y recomendada

// Uso de prototype
Persona3.prototype.telefono = '2618383832';
console.log(padre);
console.log(madre.telefono);
madre.telefono = '549618383832';
console.log(madre.telefono);

// Uso de call
let persona4 = {
    nombre: 'Juan',
    apellido: 'Perez',
    nombreCompleto2: function(titulo, telefono){
        return titulo + ': ' + this.nombre + ' ' + this.apellido + ', ' + telefono;
    }

}

let persona5 = {
    nombre: 'Carlos',
    apellido: ' Lara'
}

console.log(persona4.nombreCompleto2('Lic.', '5492615446655'));
console.log(persona4.nombreCompleto2.call(persona5, 'Ing.', '54926226414133'));

// Metodo Apply
let persona6 = {
    nombre: 'Luciano',
    apellido: 'Scilipoti',
    nombreCompleto3: function(){
        return this.nombre + ' ' + this.apellido;
    }

}
console.log(persona6.nombreCompleto3.apply(persona5)); // con persona6
let arreglo = ['Ing.', '54926226655448']
console.log(persona4.nombreCompleto2.apply(persona5, arreglo)); // con persona4 y el arreglo

