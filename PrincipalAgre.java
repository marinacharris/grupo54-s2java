public class PrincipalAgre {
    public static void main(String[] args) {
        EstudianteAgre est1 = new EstudianteAgre("Juan",123456,"CNC");
        EstudianteAgre est2 = new EstudianteAgre("Luisa",456789,"CNC");
        EstudianteAgre est3 = new EstudianteAgre("Ana",987654,"MAT");
        EstudianteAgre est4 = new EstudianteAgre("Carlos",654321, "MAT");
        String[] estudiantesMat = {est3.nombre,est4.nombre};
        String[] estudiantesCnc = {est1.nombre,est2.nombre};
        DepartamentoAgre depMat = new DepartamentoAgre("MAT", estudiantesMat);
        DepartamentoAgre depCnc = new DepartamentoAgre("CNC", estudiantesCnc);
        System.out.println(depMat.getEstudiantes().toString());
        System.out.println(depCnc.getEstudiantes());

    }
}
