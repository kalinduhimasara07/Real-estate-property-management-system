package com;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class NewServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            
            int aid = Integer.parseInt(request.getParameter("aid"));

            for (int x = 1; x <= 5; x++) {
                Part part = request.getPart("img" + x);
                String originalFilename = part.getSubmittedFileName();

                // Generate timestamp and random integer, then create new filename
                String timestamp = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
                Random random = new Random();
                int randomInt = random.nextInt(100000000) + 1; // Random integer between 1 and 100,000,000
                String fileExtension = originalFilename.substring(originalFilename.lastIndexOf("."));
                String newFilename = "file_" + timestamp + "_" + randomInt + fileExtension;

//                out.println("Original File Name: " + originalFilename + "<br>");
//                out.println("New File Name: " + newFilename + "<br>");

                // Adjusted path to save in the 'web' directory
                String path = "C:\\Users\\kalin\\OneDrive\\Documents\\NetBeansProjects\\Idamlk\\web\\images\\upload" + File.separator + newFilename;
//                out.println("File Path: " + path + "<br>");

                InputStream is = part.getInputStream();

                boolean success = uploadFile(is, path);
                if (success) {
                    out.println("File uploaded successfully: " + path);
                    out.println("</br>");
                } else {
                    out.println("Error uploading file.");
                }
                
                

                // Database connection settings
                String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
                String dbUser = "root";
                String dbPassword = "";

                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                
                String image = "img"+x;

                try {
                    // Connect to the database
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                    
                    // Prepare the SQL query to retrieve all property details
                    String sql = "UPDATE images SET "+image+"='"+newFilename+"' WHERE aid=? ";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setInt(1, aid);
                    
                    

                    int a = pstmt.executeUpdate();
                    if (a > 0) {
                        out.println("sucessfull database update");
                        response.sendRedirect("user-acc.jsp?s=0");
                    } else {
                        out.println("unsucessfull database update");
                    }

                } catch (Exception e) {
                    out.println(e);
                }

            }

        }
    }

    public boolean uploadFile(InputStream is, String path) {
        boolean test = false;
        try (FileOutputStream fos = new FileOutputStream(path)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = is.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
            test = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return test;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
