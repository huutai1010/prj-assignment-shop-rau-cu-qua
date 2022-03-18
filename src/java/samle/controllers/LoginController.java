/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package samle.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.shopping.ProductDAO;
import sample.shopping.ProductDTO;
import sample.user.UserDAO;
import sample.user.UserDTO;

public class LoginController extends HttpServlet {

    private static final String ERROR = "login.jsp";
    private static final String US = "US";
    private static final String USER_PAGE = "user.jsp";
    private static final String AD = "AD";
    private static final String ADMIN_PAGE = "admin.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String userID = request.getParameter("userID");
            String password = request.getParameter("password");
            UserDAO userDAO = new UserDAO();
            ProductDAO productDAO = new ProductDAO();
            UserDTO loginUser = userDAO.checkLogin(userID, password);
            if (loginUser != null) {
                String roleName = loginUser.getRoleName();
                HttpSession session = request.getSession();
                session.setAttribute("LOGIN_USER", loginUser);
                List<ProductDTO> listProduct = productDAO.getListProduct(""); 
                session.setAttribute("LIST_PRODUCT", listProduct); 
                if (AD.equals(roleName)) {
                    url = ADMIN_PAGE;
                } else if (US.equals(roleName)) {
                    url = USER_PAGE;                  
                } else {
                    request.setAttribute("ERROR", "Your role is not supported!");
                }
            } else {
                request.setAttribute("ERROR", "Incorrect userID or password!");
            }
        } catch (Exception e) {
            log("Error at LoginController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
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
