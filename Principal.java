public class Principal {
    public static void main(String[] args) {
        Secundaria obj1 = new Secundaria();
        System.out.println(obj1.getNombre());
        obj1.setNombre("Carolina");
        System.out.println(obj1.getNombre());
    }
}
