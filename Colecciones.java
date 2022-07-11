import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Collections;

public class Colecciones {
    public static void main(String[] args) {
        //arrayList 
        ArrayList<String> ciudadesLista = new ArrayList<String>();
        ciudadesLista.add("Cali"); // add(e) permite agregar un elemento al final de la lista
        ciudadesLista.add("Santa Marta");
        ciudadesLista.add("Pereira");
        ciudadesLista.add("Medellín");
        ciudadesLista.add("Medellín");
        System.out.println(ciudadesLista);
        ciudadesLista.add(2, "Barranquilla"); // add(i,e) permite agregarun elemento en la posición indicada
        System.out.println(ciudadesLista);
        ciudadesLista.remove(4); // remove(i), elimina el elementos de la list de la posición inicada por el índice
        System.out.println(ciudadesLista);
        ciudadesLista.set(0, "Cartagena"); // set(i), modifica el valor del elemento de la posición i.
        System.out.println(ciudadesLista);
        System.out.println(ciudadesLista.get(1)); // get(i) obtiene el valor de elemento de la posición indicada.
        //recorridos de un arrayList
        System.out.println("--------------------");
        for (int i = 0; i < ciudadesLista.size(); i++){
            System.out.println(ciudadesLista.get(i));
        }
        System.out.println("--------------------");
        for (String i: ciudadesLista){
            System.out.println(i);
        }
        System.out.println(ciudadesLista.contains("Cali")); // contains busca un elemento en un arrayList y devuelve true o false, si lo encuentra o no.

        // crear un arrayList de objetos CarroColecciones
        ArrayList<CarroColecciones> carrosLista = new ArrayList<CarroColecciones>();
        carrosLista.add(new CarroColecciones("Mazda",50000000.0));
        carrosLista.add(new CarroColecciones("Volvo"));
        carrosLista.add(new CarroColecciones("Renault"));
        carrosLista.add(new CarroColecciones("Nissan"));    
        System.out.println(carrosLista);
        System.out.println(carrosLista.get(0).getMarca()+"--"+carrosLista.get(0).getPrecio());

        for (int i = 0; i < carrosLista.size(); i++){
            System.out.println(carrosLista.get(i).getMarca());
        }

        for (CarroColecciones i: carrosLista){
            System.out.println(i.getMarca());
        }
        Collections.sort(ciudadesLista);
        System.out.println(ciudadesLista);

        //LinkedList
        LinkedList<Integer> precios = new LinkedList<Integer>();
        precios.add(45);
        precios.add(25);
        precios.add(25);
        precios.add(78);
        precios.add(33);
        System.out.println(precios);
        // addFirst, addLast, removeFirst, removeLast, getFirst, getLast, estos método son de la clase LinkedList y no existen en arrayList
        System.out.println(precios.get(2));
        System.out.println(precios.contains(78));
        Collections.sort(precios);
        System.out.println(precios);






    }
    

}
