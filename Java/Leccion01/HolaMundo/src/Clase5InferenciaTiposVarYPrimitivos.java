
public class Clase5InferenciaTiposVarYPrimitivos {
    public static void main(String[] args) {
        //Inferencia de tipos var y tipos primitivos
        var numEntero = 20; //las literales sin punto automaticamente son enteros (int)
        System.out.println("numEntero = " + numEntero);
        //var numfloat = 10.0; //las literales con F son float
        var numFloat = 10.0F; //las literales con F son float
        System.out.println("numFloat = " + numFloat);
        var numDouble = 10.0;
        System.out.println("numDouble = " + numDouble);
    }
}
