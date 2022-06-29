public class Constructor {
    int edad;
    String nombre;

    public Constructor(){ // el nombre del constructor debe coincidir con el nombre de la clase, no puede tener ningun tipo de retorno 
        edad = 20;
        nombre = "Pedro";
    }
    public static void main(String[] args) {
        Constructor c = new Constructor();
        System.out.println(c.nombre);
        System.out.println(c.edad);
    }
    
}
