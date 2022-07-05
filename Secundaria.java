public class Secundaria {
    // encapsulamiento, ocultar los atributos y sólo se pueden acceder a través de 
    // los métodos getter y setter
    private String nombre = "Juan";
    // métodos getter y setter
    // getter
    public String getNombre(){
        return nombre;
    }

    // setter
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
}
