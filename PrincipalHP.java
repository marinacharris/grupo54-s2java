public class PrincipalHP {
    public static void main(String[] args) {
        AnimalHP animal1 = new PerroHP();
        AnimalHP animal2 = new GatoHP();
        animal1.sonidoAnimal();
        animal2.sonidoAnimal();
    }
}
