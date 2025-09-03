let x = 10; // variable de tipo primitiva
console.log(x.length); // undefined. No tiene propiedades
console.log('Tipos Primitivos');
// Objeto
let persona = { // se crea una referencia de memoria
    nombre: 'Carlos',
    apellido: 'Gil',
    email: 'cgil@gmail.com',
    edad: 30,
    nombreCompleto: function(){ // método o funcion en JS
        return this.nombre + ' ' + this.apellido;
    }
}
console.log(persona.nombre); // tiene propiedades
console.log(persona.apellido);
console.log(persona.email);
console.log(persona.edad);
console.log(persona);
console.log(persona.nombreCompleto());
console.log('Ejecutando con un objeto');
// Otra forma de crear Objeto
let persona2 = new Object(); // Debe crear un nuevo objeto en memoria
persona2.nombre = 'Juan';
persona2.direccion = 'Salada 14';
persona2.telefono = '5492618282821';
console.log(persona2.telefono);
console.log('Creamos un nuevo objeto');
console.log(persona['apellido']); // Accedemos como si fuera un arreglo

// for in y accedemos al objetos como si fuera un arreglo
console.log('Usamos el ciclo for in');
for (propiedad in persona){ // ciclo for para recorrer el objeto
    console.log(propiedad); // nos muestra las propiedades del objeto
    console.log(persona[propiedad]); // nos muestra los valores que tienen las propiedades
}
persona.apellido = 'Betancud'; // Cambiamos dinamicamente un valor del objeto. Si está mal escrita la propiedad, crea una nueva
console.log(persona);
console.log('cambiamos y eliminamos un error');
// para eliminar propiedades del objero
persona.apellidos = 'Perez'; // creamos una mal para el ejemplo
console.log(persona);
delete persona.apellidos; // Eliminamos la propiedad
console.log(persona);

// Distintas formas de imprimir un objeto
// Número 1: la más sencilla: concatenar cada valor de cada propiedad
console.log('Distintas formas de imprimir un objeto');
console.log('Número 1: la más sencilla: concatenar cada valor de cada propiedad');
console.log(persona.nombre + ', ' + persona.apellido);

// Número 2: A través del ciclo for in
console.log('Número 2: A través del ciclo for in');
for(nombrePropiedad in persona){
    console.log(persona[nombrePropiedad]);
}

// Número 3: La función Object.values() - como un arreglo
console.log('Número 3: La función Object.values() - como un arreglo');
let personaArray = Object.values(persona);
console.log(personaArray);

// Número 4: Utilizaremos el método JSON.Stringify
console.log('Número 4: Utilizaremos el método JSON.Stringify');
let personaString = JSON.stringify(persona);
console.log(personaString);