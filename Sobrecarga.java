public class Sobrecarga {
    // En java varios métodos pueden tener el mismo nombre con diferentes parámetros
    static int suma(int x, int y){
        return x+y;
    }
    static double suma(double x, double y){
        return x+y;
    }
    public static void main(String[] args) {
        int sum1 = suma(4,8);
        System.out.println(sum1);
        double sum2 = suma(4.5,8.2);
        System.out.println(sum2);
    }
}
