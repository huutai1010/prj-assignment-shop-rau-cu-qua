/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.date;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author maihuutai
 */
public class ValidDate {
    public static boolean isImportDateBeforeToday(String strDate) {
        boolean check = false;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date importDate = null;
        Date today = null; 
        try {
            today = sdf.parse(sdf.format(new Date()));
            importDate = sdf.parse(strDate);
            if (importDate.before(today)) {
                check = true;
            }
        } catch (Exception e) {
            System.out.println("Lỗi rồi -----------------------------");
            e.printStackTrace();
        }
        return check;
    }
    
    public static boolean isImportDateAfterUsingDate(String strFirstDate, String strSecDate) {
        boolean check = false;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");       
        try {
            Date importDate = sdf.parse(strFirstDate);
            Date usingDate = sdf.parse(strSecDate);
            if (importDate.after(usingDate)) {
                check = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
}
