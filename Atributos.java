public class Atributos {
    int x = 5;
    final int INTERES = 3;
    public static void main(String[] args) {
        Atributos obj1 = new Atributos();
        System.out.println(obj1.x);
        obj1.x = 20;
        System.out.println(obj1.INTERES);
        System.out.println(obj1.x);
        
    }
}
