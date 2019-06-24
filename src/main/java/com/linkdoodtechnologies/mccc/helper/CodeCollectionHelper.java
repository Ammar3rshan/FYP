package com.linkdoodtechnologies.mccc.helper;

import com.linkdoodtechnologies.mccc.dao.CodeCollectionDAO;
import com.linkdoodtechnologies.mccc.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CodeCollectionHelper {


    public static boolean insertUserInfo(String user_name,String user_student_id,String data_created_time) {
        boolean isSuccess = true;
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DBConnection.getConnection();
            stmt = conn.prepareStatement("INSERT INTO `user_info`( `user_name`, `user_student_id`,`data_created_time`) VALUES (?,?,?)");
            stmt.setString(1, user_name);
            stmt.setString(2, user_student_id);
            stmt.setString(3, data_created_time);

            // stmt.setString(4, cd_pt_quantity);
            stmt.executeUpdate();
        } catch (SQLException se) {
            isSuccess = false;
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            isSuccess = false;

            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
                isSuccess = false;

            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                isSuccess = false;

                se.printStackTrace();
            }//end finally try
        }//end try
        return isSuccess;
    }


    public static CodeCollectionDAO getUserId(String user_name,String user_student_id) {
        CodeCollectionDAO codeCollectionDAO = null;

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DBConnection.getConnection();
            //STEP 4: Execute a query
            stmt = conn.prepareStatement("SELECT `user_db_id` FROM `user_info` WHERE user_name = ? AND user_student_id = ?");
            stmt.setString(1, user_name);
            stmt.setString(2, user_student_id);

            ResultSet rs = stmt.executeQuery();
            //STEP 5: Extract data from result set
            while (rs.next()) {
                codeCollectionDAO = new CodeCollectionDAO();
                codeCollectionDAO.user_db_id = rs.getString("user_db_id");



            }
            rs.close();
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try

        return codeCollectionDAO;
    }



    public static boolean insertUserAnswers(String answer_1,String answer_2,String answer_3,String answer_4, String answer_5,String answer_1_clicks,String answer_2_clicks,String answer_3_clicks,String answer_4_clicks,String answer_5_clicks,String total_clicks,String answer_1_delets,String answer_2_delets,String answer_3_delets,String answer_4_delets,String answer_5_delets,String total_delet,String user_db_id) {
        boolean isSuccess = true;
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DBConnection.getConnection();
            stmt = conn.prepareStatement("UPDATE `user_info` SET `answer_1`=? ,`answer_2`=?,`answer_3`=? ,`answer_4`=? ,`answer_5`=?,`answer_1_clicks`=?,`answer_2_clicks`=?,`answer_3_clicks`=?,`answer_4_clicks`=?,`answer_5_clicks`=? ,`total_clicks`=?,`answer_1_delets`=?,`answer_2_delets`=?,`answer_3_delets`=?,`answer_4_delets`=?,`answer_5_delets`=? ,`total_delet`=? WHERE user_db_id = ?");
            stmt.setString(1, answer_1);
            stmt.setString(2, answer_2);
            stmt.setString(3, answer_3);
            stmt.setString(4, answer_4);
            stmt.setString(5, answer_5);
            stmt.setString(6, answer_1_clicks);
            stmt.setString(7, answer_2_clicks);
            stmt.setString(8, answer_3_clicks);
            stmt.setString(9, answer_4_clicks);
            stmt.setString(10, answer_5_clicks);
            stmt.setString(11, total_clicks);
            stmt.setString(12, answer_1_delets);
            stmt.setString(13, answer_2_delets);
            stmt.setString(14, answer_3_delets);
            stmt.setString(15, answer_4_delets);
            stmt.setString(16, answer_5_delets);
            stmt.setString(17, total_delet);
            stmt.setString(18, user_db_id);

            // stmt.setString(4, cd_pt_quantity);
            stmt.executeUpdate();
        } catch (SQLException se) {
            isSuccess = false;
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            isSuccess = false;

            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
                isSuccess = false;

            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                isSuccess = false;

                se.printStackTrace();
            }//end finally try
        }//end try
        return isSuccess;
    }
}
