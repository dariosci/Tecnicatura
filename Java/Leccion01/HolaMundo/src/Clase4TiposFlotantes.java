public class Clase4TiposFlotantes {
    public static void main(String[] args) {
        //float numFloat = 10.0F;
        //float numfloat = (float) 10.0; //tambien es valido así
        float numFloat = 3.4028235E38F; // 4 bytes
        System.out.println("numFloat = " + numFloat);
        System.out.println("Valor minimo del Float = " + Float.MIN_VALUE);
        System.out.println("Valor maximo del Float = " + Float.MAX_VALUE);

        //double numDouble = 10;
        double numDouble = 1.7976931348623157E308;
        System.out.println("numDouble = " + numDouble);
        System.out.println("Valor minimo del Double = " + Double.MIN_VALUE);
        System.out.println("Valor maximo del Double = " + Double.MAX_VALUE);
    }
}
