/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Very_Easy;

import java.time.LocalDate;
import java.time.Month;
import java.time.temporal.ChronoUnit;

/**
 *
 * @author Mizanur Rahman
 */
public class CountDate {
    public static void main(String[] args) {
         LocalDate dateBefore=LocalDate.of(2019,Month.APRIL,01);
         
         LocalDate dateAfter=LocalDate.of(2020, Month.MARCH, 9);
         long noOfDaysBetween =ChronoUnit.DAYS.between(dateBefore, dateAfter);
         System.out.println(noOfDaysBetween);
         
    }
}
