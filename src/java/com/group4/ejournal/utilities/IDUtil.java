package com.group4.ejournal.utilities;

import com.group4.ejournal.dao.UserDAO;
import com.group4.ejournal.dao.UserDTO;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class IDUtil {

    public static String generateId() {
    String pId = null;
    Random random = new Random();
    int length = random.nextInt(9) + 2;
        StringBuilder sb = new StringBuilder("UA");
        for (int i = 0; i < length; i++) {
            sb.append(random.nextInt(10));
        }
        pId = sb.toString();
        // Check if the ID is unique
        // You can replace this with your own logic to check for uniqueness
    return pId;
}
//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        System.out.println(generateId());
//    }

    public static String generateTransId() {
        String tId = null;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
        tId = sdf.format(new Date());
        tId = "T" + tId;

        return tId;
    }
}
