public class PrincipalAbs {
    public static void main(String[] args) {
        //AnimalAbs obj1 = new AnimalAbs();, esto NO se puede porque es una clase abstracta
        GalloAbs animal1 = new GalloAbs();
        animal1.dormir();
        animal1.sonidoAnimal();
        
    }
}
