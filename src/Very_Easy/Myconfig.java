/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Very_Easy;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mizanur Rahman
 */
public class Myconfig {
     Connection con=null;
   Statement st=null;
   ResultSet rs=null;
    static String iid=null,iname=null,iprice=null;
     void myconnection()
    {
        try {
            con=DriverManager.getConnection("jdbc:mysql://localhost/mcafe", "root", "");
            st=con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(General.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    void  showClickedData(String m)
{
    General gc=new General();
        try {
              myconnection();
        
       
            String dataIn="SELECT * FROM `robi` where `pid`="+m;
            rs=st.executeQuery(dataIn);
            if(rs.next()){
                iid=rs.getString(1);
                iname=rs.getString(2);
                iprice=rs.getString(3);
                
               
                
            } 
            
        } catch (SQLException ex) {
            Logger.getLogger(General.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
}
    
    
    
}
