// let persona3 = new Persona('Carla', 'Ponce'); esto no se debe hacer; Persona aun no esta definida

class Persona{ // clase padre- las clases padre son extends de Object(tiene metodos por defecto que heredan todos los hijos)
    
    static contadorPersonas = 0; // Atributo estático
    
    static get MAX_OBJ(){ // Este método simula una constante
        return 5;
    }
    //email = 'Valor default email'; // Atributo no estático
    
    constructor(nombre, apellido){
        this._nombre = nombre;
        this._apellido = apellido;
        if (Persona.contadorPersonas < Persona.MAX_OBJ){
            this.idPersona = ++Persona.contadorPersonas;
        } else {
            console.log('Se ha superado el máximo de objetos permitidos');
        }
        //Persona.contadorObjetosPersona++;
        //this.idPersona = ++Persona.contadorPersonas;
        //console.log('Se incrementa el contador: ' + Persona.contadorObjetosPersona);
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
        return this.idPersona + ' ' + this._nombre + ' ' + this._apellido;
    }
    // Sobreescribiendo el método de la clase padre (Object)
    toString(){ // Regresa un String
        // Se aplica el polimorfismo que significa = multiples formas en tiempo de ejecucion
        // El método que se ejecuta depende si es una referencia de tipo padre o hija
        return this.nombreCompleto(); 
    }

    //Clase 8
    static saludar(){
        console.log('Saludos desde este método static');
    }
    static saludar2(persona){
        console.log(persona.nombre + ' ' + persona.apellido);
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

// Clase 8 - Static
//persona1.saludar(); no se utiliza desde el objeto
Persona.saludar(); //pero si desde la clase
Persona.saludar2(persona1);

Empleado.saludar();
Empleado.saludar2(empleado1);

//console.log(persona1.contadorObjetosPersona); // al ser declarada como static solo puede acceder la clase
console.log(Persona.contadorObjetosPersona);
console.log(Empleado.contadorObjetosPersona);

// Atributos no estaticos
console.log(persona1.email); // desde el objeto
console.log(empleado1.email);
//console.log(Persona.email); // desde la clase no se puede acceder por q no es estático

console.log(persona1.toString());
console.log(persona2.toString());
console.log(empleado1.toString());
console.log(Persona.contadorPersonas);
let persona3 = new Persona('Carla', 'Pertosi');
console.log(persona3.toString());
console.log(Persona.contadorPersonas);

// Constantes Estáticas
console.log(Persona.MAX_OBJ);
//Persona.MAX_OBJ = '10'; // No se puede modificar ni alterar

let persona4 = new Persona('Franco', 'Diaz');
console.log(persona4.toString());
let persona5 = new Persona('Liliana', 'Paz'); // Se ha superado el limite
console.log(persona5.toString()); // Sin definir por que se ha superado el limite q pusimos para crear objetos