{
  {
    // Ejercicio: Si el padre puede asistir al juego de su hijo
    let vacaciones = true,
      diaDescanso = false; //Aqui vamos a ir cambiando el valor

    if (vacaciones == true || diaDescanso == true) {
      console.log("El padre puede asistir al juego de su hijo");
    } else {
      console.log("El padre no puede asistir al juego de su hijo");
    }

    // Operador ternario
    // Ejercicio:
    let resultado2 = 3 > 2 ? "Verdadero" : "Falso";
    console.log(resultado2);
    let numero = 12;
    resultado2 = numero % 2 == 0 ? "Es un numero PAR" : "Es un numero IMPAR";
    console.log(resultado2);

    //Convertir string a numero
    let miNumero = "18"; //es una cadena
    console.log(typeof miNumero);
    let edad2 = Number(miNumero); // esta es una funcion
    console.log(typeof edad2);
    if (edad2 >= 18) {
      console.log("Puede votar");
    } else {
      console.log("Muy joven para votar");
    }

    let resultado3 = edad2 >= 18 ? "Puede votar" : "Muy joven para votar";
    console.log(resultado3);

    //Funcion ifNaN
    let miNumero2 = "21"; //es una cadena
    console.log(typeof miNumero2);
    let edad3 = Number(miNumero2); // esta es una funcion
    console.log(typeof edad3);
    if (isNaN(edad3)) { //No es un numero = is Not a Number (devuelve un resultado booleano)
      console.log("Esta variable no tiene solo numeros");
    } else {
      if (edad3 >= 18) {
        console.log("Puede votar");
      } else {
        console.log("Muy joven para votar");
      }
    }
  }

} //LLAVES PARA QUOKKA
