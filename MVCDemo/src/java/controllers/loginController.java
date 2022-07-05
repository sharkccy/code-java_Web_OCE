/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ModelDAO;
import model.entity.Member;
/**
 *
 * @author student
 */
@WebServlet(name = "loginCongroller", urlPatterns = {"/loginController"})
public class loginController extends HttpServlet {
    java.sql.Connection con;
    java.sql.Statement stmt;
    
    //建構式 載入資料庫驅動程式
    public loginController() throws ClassNotFoundException {
        // 載入 Mariadb drvier        
        // Class.forName("org.mariadb.jdbc.Driver");
    }
   
    
    // 使用spring 取代 servlet
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 取出 request 資訊 
        String email = request.getParameter("account");
        String passwd = request.getParameter("passwd");
        // 驗證 email, passwd 沒有惡意資料(sql injection , 攻擊字串....)
        // 篩選  insert into , update , delete 等 sql 語法
                
        // 判斷使用者身分 與資料庫比對
        Member member = ModelDAO.CheckUser(email, passwd);
        if( member != null  ) {
            System.out.println("會員姓名: " + member.getName());
            HttpSession session = request.getSession();
            RequestDispatcher disp = request.getRequestDispatcher("loginOK.jsp");                       
            session.setAttribute("member", member);  //每一個頁面都需要的話
            // request.setAttribute("member", member); //   只有在特定頁面需要
            disp.forward(request, response);
        } else {
            RequestDispatcher disp = request.getRequestDispatcher("loginFail.jsp");
            disp.forward(request, response);
        }
           //  使用 model ( 優點 ? , 學習成本 hibernate , mybatis )
           
           //  未使用 model
              // 直接 jdbc 連線 ( jdbc  缺點 )
              
              
        // 帳密符合  --> 轉向 登入成功 頁面
           // loginOK.jsp
           
           // response.sendRedirect("loginOK.jsp");
           
           
        // 帳密不符  --> 登入失敗
          // loginFail.jsp
      
    }

    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
