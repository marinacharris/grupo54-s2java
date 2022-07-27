import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
public class Ventana extends JFrame implements ActionListener{
    private JLabel etiqueta1, etiqueta2, etiqueta3;
    private JButton boton1, boton2;

    public Ventana(){
       setLayout(null); //método heredado del jFrame
       etiqueta1 = new JLabel("Hola Mundo");
       etiqueta1.setBounds(20, 20, 100, 20); 
       etiqueta1.setOpaque(true);
       add(etiqueta1); //metodo heredado del jFrame
       etiqueta2 = new JLabel("Hola Mundo");
       etiqueta2.setBounds(20, 50, 100  , 20);
       add(etiqueta2);
       etiqueta3 = new JLabel("Hola Mundo");
       etiqueta3.setBounds(120, 20, 100 , 20);
       add(etiqueta3); 
       boton1 = new JButton("Rojo");
       boton1.setBounds(240, 180, 100, 30);
       add(boton1);
       boton1.addActionListener(this);
       boton2 = new JButton("Amarillo");
       boton2.setBounds(240,220, 100, 30);  
       add(boton2);
       boton2.addActionListener(this);


    }

    public static void main(String[] args) throws Exception {
        Ventana ventana1 = new Ventana();
        ventana1.setBounds(50,50,400,300);
        ventana1.setVisible(true);
        ventana1.setTitle("Aplicación 1");
        ventana1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);        
        
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource()==boton1){
            etiqueta1.setBackground(Color.RED);
            etiqueta1.setText("Rojo");
        }
        if(e.getSource()==boton2){
            etiqueta1.setBackground(Color.yellow);
            etiqueta1.setText("Amarillo");
        }
        
    }
}
