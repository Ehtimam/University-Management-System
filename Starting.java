/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package university.management.system;
import java.awt.*;
import javax.swing.*;

public class Starting {
	public static void main(String s[]) {
		Frame f = new Frame("University Management System");
                f.setVisible(true);
                int i ;
                int x=1;
                for(i=2;i<=600;i+=4,x+=1){
                    f.setLocation((500-(i+x)/2), 300-(i/2));
                    f.setSize(i+3*x, i+x/2);
                    
                    try{
                        Thread.sleep(10);
                        
                    }catch(Exception e){
                        
                    }
                }
	}
}
class Frame extends JFrame implements Runnable{
    Thread t1;
    Frame(String s){
        super(s);
        setLayout(new FlowLayout());
        ImageIcon c1 = new ImageIcon(ClassLoader.getSystemResource("university/management/system/icon/NEUB.jpg"));
        Image i1 = c1.getImage().getScaledInstance(1010,650,Image.SCALE_DEFAULT);
        ImageIcon i2 = new ImageIcon(i1);
        
        JLabel ml = new JLabel(i2);
        add(ml);
        t1 = new Thread(this);
        t1.start();
        
        
    }

    @Override
    public void run() {
        try{
            Thread.sleep(7000);
            this.setVisible(false);
            //Login f1 = new Login();
            Join j = new Join();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}

