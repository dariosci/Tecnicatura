miFuncion(8, 2); // Esto se le conoce como hosting. Podemos llamar desde cualquier parte del codigo

function miFuncion(a, b){ // Entre los parentesis van los parametros (opcionales)
    console.log("Sumamos: " + (a + b));
}

// Con return
function miFuncion2(a, b){ // Entre los parentesis van los parametros (opcionales)
    //console.log("Sumamos: " + (a + b));
    return a + b; // Devuelve el resultado de la funcion. JS si no encuentra return lo agrega automaticamente aunque no se vea
}

// LLamando la funcion
miFuncion(5, 4); // Acá llamamos la funcion. Aquí van los argumentos (opcionales)

// Llamando a la funcion y guardando el resultado en una variable con return
let resultado = miFuncion2(6, 7);
console.log(resultado);

// Declaramos una función de tipo expresión o anónima
let x = function(a, b){ return a + b}; // necesita cierre con punto y coma
resultado = x(5, 6); // al llamarla se pone la variable y parentesis
console.log(resultado);

// Funciones de tipo self y invoking. Cuando se llama una función a si misma
(function(a, b){
    console.log('Ejecutando la función: ' + (a + b));
})(9, 6);

// arguments
console.log(typeof miFuncion); 
function miFuncion3(a, b){ 
    console.log(arguments); // Podemos ver cuantos argumentos tiene la funcion. Debe estár dentro de la funcion
}
miFuncion3(5, 7, 3, 6); 

// toString
var miFuncionTexto = miFuncion3.toString(); //convierte la funcion a texto
console.log(miFuncionTexto);

// Funciones flecha
const sumarFuncionFlecha = (a, b) => a + b; // No hace falta la palabra function (lo reemplaza la fecha), tampoco las llaves y el return
resultado = sumarFuncionFlecha(3 , 7); // Asignamos el valor a una variable
console.log(resultado);

// Funcion de tipo expresión
let sumar = function (a = 4, b = 8){
    console.log(arguments[0]); //muestra el parametro de a
    console.log(arguments[1]); //muestra el parametro de b
    return a + b + arguments[2];
    //return a + b;
}
resultado = sumar(3, 2, 9);
console.log(resultado);

// Sumar todos los argumentos
// Hosting -> llamar a la función antes de ser definida
let respuesta = sumarTodo(5, 4, 13, 10, 9);
console.log(respuesta);
function sumarTodo(){
    let suma = 0;
    for (let i = 0; i < arguments.length; i++){
        suma += arguments[i]; // arguments es para arreglos
    }
    return suma;
}

// Tipos primitivos
// Por Valor
let k = 10;
function cambiarValor(a){ // Paso por valor
    console.log(a); // valor que recibe (copia) de k
    a = 20; // No modifica la variable original (k). Al finalizar la funcion se destruye la variable a
}

cambiarValor(k);
console.log(k); // Sigue teniendo el valor original

// Por referencia
const persona = {
    nombre: 'Juan',
    apellido: 'Lepez'
}
console.log(persona); // Original

function cambiarValorObjeto(p1){ // Paso por referencia
    p1.nombre = 'Ignacio';
    p1.apellido = 'Perez';
}
cambiarValorObjeto(persona);
console.log(persona); // Despues del cambio