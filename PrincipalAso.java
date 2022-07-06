public class PrincipalAso {
    public static void main(String[] args) {
        BancoAso banco1 = new BancoAso("Bancolombia");
        EmpleadoAso empleado1 = new EmpleadoAso("Julieta Ruíz");
        System.out.println(empleado1.getNombre() + " trabaja en el banco "+banco1.getNombre());

    }
}
