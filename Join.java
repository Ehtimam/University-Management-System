/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package university.management.system;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
/**
 *
 * @author hp
 */
public class Join extends JFrame implements ActionListener {
    
    JButton b1,b2;
    JFrame f;
    JLabel l;
    
    Join(){
        super("Join");
        
        setBackground(Color.white);
        setLayout(null);
        
        l = new JLabel();
        l.setBounds(0, 0, 200, 100);
        add(l);
        
        b1 = new JButton("Admin");
        b1.setBounds(60, 210, 120, 30);
        b1.setFont(new Font("serif",Font.BOLD,15));
        b1.addActionListener(this);
        b1.setBackground(Color.BLACK);
        b1.setForeground(Color.white);
        add(b1);
        
        b2 = new JButton("Student");
        b2.setBounds(200, 210, 120, 30);
        b2.setFont(new Font("serif",Font.BOLD,15));
        b2.addActionListener(this);
        b2.setBackground(Color.BLACK);
        b2.setForeground(Color.white);
        add(b2);
        
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("university/management/system/icon/NEUB_logo.jpg"));
        Image i2 = i1.getImage().getScaledInstance(100, 100,Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel l3 = new JLabel(i3);
        l3.setBounds(0,0,370,200);
        add(l3);
        
        getContentPane().setBackground(Color.WHITE);
        
        setVisible(true);
        setSize(400,300);
        setLocation(500,300);
        
    }
    
    @Override
    public void actionPerformed(ActionEvent ae) {
       
        if (ae.getSource()==b1){
            try{
            
                new Login().f.setVisible(true);
                setVisible(false);
                
        }catch(Exception e){
            e.printStackTrace();
        }
        }
       else if(ae.getSource()==b2){
           try{
               
               new Stulogin().setVisible(true);
                setVisible(false);
        }catch(Exception e){
            e.printStackTrace();
        }
       }
}

    
    public static void main(String arg[]){
        new Join();
    }
}
/*private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
    }*/                                        
