package com.linkdoodtechnologies.mccc.helper;

import com.linkdoodtechnologies.mccc.dao.UniversityDAO;
import com.linkdoodtechnologies.mccc.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UniversityHelper {

        public static List<UniversityDAO> getAllUni() {
            List<UniversityDAO> universityDAOList = new ArrayList<>();

            Connection conn = null;
            PreparedStatement stmt = null;

            try {
                conn = DBConnection.getConnection();
                //STEP 4: Execute a query
                stmt = conn.prepareStatement("SELECT `uni_id`, `admin_id`, `uni_type`, `uni_name`,`uni_location`, `uni_logo`, `uni_num_of_courses`, `uni_created_date_time`, `uni_update_date_time` FROM `university_tbl` WHERE 1 ");

                ResultSet rs = stmt.executeQuery();
                //STEP 5: Extract data from result set
                while (rs.next()) {
                    UniversityDAO universityDAO = new UniversityDAO();
                    universityDAO.uni_id = rs.getString("uni_id");
                    universityDAO.uni_name = rs.getString("uni_name");
                    universityDAO.uni_logo = rs.getString("uni_logo");
                    universityDAO.uni_num_of_courses = rs.getString("uni_num_of_courses");
                    universityDAO.uni_type = rs.getString("uni_type");
                    universityDAO.uni_created_date_time = rs.getString("uni_created_date_time");
                    universityDAO.admin_id = rs.getString("admin_id");
                    universityDAO.uni_update_date_time = rs.getString("uni_update_date_time");
                    universityDAO.uni_location = rs.getString("uni_location");


                    universityDAOList.add(universityDAO);
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

            return universityDAOList;
        }


}
