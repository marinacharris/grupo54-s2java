public class DepartamentoAgre {
    protected String nombre;
    private String[] estudiantes;
    public DepartamentoAgre(String nombre, String[] estudiantes) {
        this.nombre = nombre;
        this.estudiantes = estudiantes;
    }
    // getter 
    public String[] getEstudiantes() {
        return estudiantes;
    }
}
