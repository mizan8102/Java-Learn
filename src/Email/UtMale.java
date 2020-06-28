/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Email;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mizanur Rahman
 */
public class UtMale {
    public static void main(String[] args) {
        try {
            MailTest.sendMail("mizan81025@gmail.com");
        } catch (Exception ex) {
            Logger.getLogger(UtMale.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
