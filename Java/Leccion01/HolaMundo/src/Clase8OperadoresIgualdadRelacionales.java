
public class Clase8OperadoresIgualdadRelacionales {

    public static void main(String[] args) {
        //Operadores de igualdad y Relacionales
        var aNum = 5;
        var bNum = 4;
        var cNum = (aNum == bNum); //Igualdad (los parentesis son opcionales)
        System.out.println("cNum = " + cNum);

        var dNum = aNum != bNum; //Distinto
        System.out.println("dNum = " + dNum);

        var cadenaA = "Hello";
        var cadenaB = "bye bye";
        var cVar = cadenaA == cadenaB; //compara solo las referencias
        System.out.println("cVar = " + cVar);

        var fVar = cadenaA.equals(cadenaB); //este se usa para comparar realmentes si dos cadenas son iguales
        System.out.println("fVar = " + fVar);

        //Relacionales
        var gVar = aNum > bNum; //> >= == < <= != SE PUEDEN USAR CUALQUIERA DE ESTOS RELACIONALES. LOS PARENTESIS SON OPCIONALES
        System.out.println("gVar = " + gVar);

        if (bNum % 2 == 0) {
            System.out.println("El numero es PAR"); 
        }else {
            System.out.println("El numero es Impar");
        }
        var edad = 15;
        var adulto = 18;
        if (edad >= adulto){
            System.out.println("Es mayor de edad");
        } else {
            System.out.println("Es menor de edad");
        }
    }
}
