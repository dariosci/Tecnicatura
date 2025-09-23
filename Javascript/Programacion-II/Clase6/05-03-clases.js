// let persona3 = new Persona('Carla', 'Ponce'); esto no se debe hacer; Persona aun no esta definida

class Persona{ // clase padre- las clases padre son extends de Object(tiene metodos por defecto que heredan todos los hijos)
    constructor(nombre, apellido){
        this._nombre = nombre;
        this._apellido = apellido;
    }
    get nombre(){
        return this._nombre;
    }
    get apellido(){
        return this._apellido;
    }
    set nombre(nombre){
        this._nombre = nombre;
    }
    set apellido(apellido){
        this._apellido = apellido;
    }
    // Sobreescritura
    nombreCompleto(){ // clase 7
        return this._nombre + ' ' + this._apellido;
    }
    // Sobreescribiendo el método de la clase padre (Object)
    toString(){ // Regresa un String
        // Se aplica el polimorfismo que significa = multiples formas en tiempo de ejecucion
        // El método que se ejecuta depende si es una referencia de tipo padre o hija
        return this.nombreCompleto(); 
    }
}

class Empleado extends Persona{ // clase hija
    constructor(nombre, apellido, departamento){
        super(nombre, apellido);
        this._departamento = departamento;
    }
    get departamento(){
        return this._departamento;
    }
    set departamento(departamento){
        this._departamento = departamento;
    }
    // Sobreescritura
    nombreCompleto(){
        return super.nombreCompleto() + ', ' + this.departamento;
    }
}

let persona1 = new Persona('Martin', 'Perez');
//console.log(persona1);
console.log(persona1.nombre);
persona1.nombre = 'Juan Carlos';
persona1.apellido = 'Cara';
console.log(persona1.nombre);
console.log(persona1.apellido);
let persona2 = new Persona('Carlos', 'Lara');
//console.log(persona2);
console.log(persona2.nombre)
persona2.nombre = 'Maria Laura';
persona2.apellido = 'Messi';
console.log(persona2.nombre);
console.log(persona2.apellido);

let empleado1 = new Empleado('Maria', 'Gimenez', 'Sistemas');
console.log(empleado1);
console.log(empleado1._nombre);

//Clase 7
console.log(empleado1.nombreCompleto()); // se heredan los metodos

// Object.prototype.toString Esta es la manera de acceder a atributos y métodos de manera dinámica
console.log(empleado1.toString());
console.log(persona1.toString());