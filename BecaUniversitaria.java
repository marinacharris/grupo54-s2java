public class BecaUniversitaria {
    private int pTiempo;
    private double pMonto;
    private double pInteres;
    public BecaUniversitaria(){ 
        this.pTiempo = 0;
        this.pMonto = 0;
        this.pInteres = 0;
    }
    public BecaUniversitaria(int pTiempo, double pMonto, double pInteres){
        this.pTiempo = pTiempo;
        this.pMonto = pMonto;
        this.pInteres = pInteres; 
    }
    public double calcularInteresSimple(){
        double intS = Math.round(pMonto * (pInteres/100) * pTiempo);
        return intS;
    }
    public double calcularInteresCompuesto(){
        double intC = Math.round(pMonto * (Math.pow(1+pInteres/100,pTiempo)-1));
        return intC;
    }
    public String compararInversion(){
        double compInver = calcularInteresCompuesto() - calcularInteresSimple();
        if (compInver ==0){
            return "No se obtuvo diferencia entre las proyecciones, revisar los parámetros de entrada.";
        }else{
            return "La diferencia entre la proyección de interés compuesto e interés simple es: $" + compInver;
        }
        
    }
    public String compararInversion(int tiempo, double monto, double interes){
        this.pTiempo = tiempo;
        this.pMonto = monto;
        this.pInteres = interes;
        double compInver = calcularInteresCompuesto() - calcularInteresSimple();
        if (compInver == 0){
            return "No se obtuvo diferencia entre las proyecciones, revisar los parámetros de entrada.";
        }else{
            return "La diferencia entre la proyección de interés compuesto e interés simple es: $" + compInver;
        }
    }

    public static void main(String[] args) {
        BecaUniversitaria becaUniversitaria = new BecaUniversitaria(); 
        System.out.println(becaUniversitaria.calcularInteresSimple()); 
        System.out.println(becaUniversitaria.calcularInteresCompuesto()); 
        System.out.println(becaUniversitaria.compararInversion(60,13000,1.4)); 
    }
    
}
