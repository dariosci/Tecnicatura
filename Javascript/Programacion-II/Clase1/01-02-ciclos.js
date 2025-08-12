// while - solo ejecuta si se comple la condicion
let contador = 0;
while (contador < 3){
    console.log(contador);
    contador++;
}
console.log("Fin del ciclo while");

// do while - se ejecuta al menos una vez y repite mientras la condicion se cumpla
let conteo = 0;
do{
    console.log(conteo);
    conteo++;
}while(conteo < 3);
console.log("Fin del ciclo do while");

// for (para) - se ejecuta una n cantidad de veces
for(let contando = 0; contando < 3; contando++){ // for(variable; condicion ; incremento/decremento){}
    console.log(contando);
}
console.log("Fin del ciclo for");

// Palabra reservada break
for(let contando = 0; contando <= 10; contando++){ // for(variable; condicion ; incremento/decremento){}
    if(contando % 2 == 0){
        console.log(contando); // Muestra todos los pares
        break;
    }    
}
console.log("Termina el ciclo for al encontrar el primer número par");

contador = 0;
while (contador <= 10){
    if(contador % 2 == 0){
        console.log(contador); // Muestra todos los pares
        break;
    }
    contador++;
}
console.log("Termina el ciclo while al encontrar el primer número par");

conteo = 0;
do{
    if(conteo % 2 == 0){
        console.log(conteo); // Muestra todos los pares
        break;
    }
    conteo++;
}while(conteo <= 10);
console.log("Termina el ciclo do-while al encontrar el primer número par");

// Palabra reservada continue
for(let contando = 0; contando <= 10; contando++){ // for(variable; condicion ; incremento/decremento){}
    if(contando % 2 !== 0){
        continue; // ir a la siguiente iteración
    }
    console.log(contando);
}
console.log("Termina el ciclo for");

contador = 0;
while (contador <= 10){
    if(contador % 2 !== 0){
        contador++;
        continue; // ir a la siguiente iteración
    }
    console.log(contador);
    contador++;
}
console.log("Termina el ciclo while");

conteo = 0;
do{
    if(conteo % 2 !== 0){
        conteo++;
        continue; // ir a la siguiente iteración
    }
    console.log(conteo); // Muestra todos los pares
    conteo++;
}while(conteo <= 10);
console.log("Termina el ciclo do-while");

// Palabra reservada continue y Etiquetas Labels (NO SON RECOMENDADAS. NO SE UTILIZAN)
inicio:
for(let contando = 0; contando <= 10; contando++){ // for(variable; condicion ; incremento/decremento){}
    if(contando % 2 !== 0){
        break inicio; // ir a la siguiente iteración
    }
    console.log(contando);
}
console.log("Termina el ciclo for");