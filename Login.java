import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Login extends JFrame implements ActionListener {
    private JLabel lblName;
    private JButton btnLogin;
    private JTextField txtName;
    
    public Login(){
        setLayout(null);
        lblName = new JLabel("Usuario");
        lblName.setBounds(10,10,100,30);
        add(lblName);
        txtName = new JTextField();
        txtName.setBounds(120, 10, 150, 30);
        add(txtName);
        btnLogin = new JButton("Aceptar");
        btnLogin.setBounds(10, 80, 100, 30);
        add(btnLogin);
        btnLogin.addActionListener(this);
    }


    public static void main(String[] args) throws Exception{
        Login ventana1 = new Login();
        ventana1.setBounds(30,30,350,180);
        ventana1.setVisible(true);
        ventana1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource()== btnLogin){
            String nombre = txtName.getText();
            if (nombre.equals("marina")){
                setTitle("Correcto");
            }else{
                setTitle("Incorrecto");
            }
        } 
        
    }
}
