public class MascotaH { //clase padre o super clase, esto es herencia
    protected String nombre;
    protected String raza;
    protected int edad;
    // getters
    public String getNombre() {
        return nombre;
    }
    public String getRaza(){
        return raza;
    }
    public int getEdad() {
        return edad;
    }
    // setters
    public void setNombre(String nombre) {
        this.nombre = nombre;   
    }
    public void setRaza(String raza) {
        this.raza = raza;   
    }
    public void setEdad(int edad) {
        this.edad = edad; 
    }
    public void dormir(){
        System.out.println("la mascota duerme");
    }
}
