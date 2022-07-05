public class PerroH extends MascotaH{
    public PerroH(String nombre, String raza, int edad) {
        this.nombre= nombre;
        this.raza = raza;
        this.edad = edad;
    }
    public void sonido(){
        System.out.println("El perro hace guau");
    }
    
}
