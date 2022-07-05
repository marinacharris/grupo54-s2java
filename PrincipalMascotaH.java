public class PrincipalMascotaH {
    public static void main(String[] args) {
        GatoH gato = new GatoH("Pepe","Angora", 3);
        PerroH perro = new PerroH("Nerón", "Labrador", 4);
        System.out.println(gato.nombre);
        System.out.println(gato.edad);
        System.out.println(gato.raza);
        System.out.println(perro.nombre);
        System.out.println(perro.edad);
        System.out.println(perro.raza);
        gato.dormir();
        perro.dormir();
        gato.sonido();
        perro.sonido();


    }
}
