/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package samle.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.user.UserDAO;
import sample.user.UserDTO;
import sample.user.UserError;

/**
 *
 * @author maihuutai
 */
@WebServlet(name = "CreateUserController", urlPatterns = {"/CreateUserController"})
public class CreateUserController extends HttpServlet {

    private static final String ERROR = "createUser.jsp";
    private static final String SUCCESS = "login.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserError userError = new UserError();
        try {
            String userID = request.getParameter("userID");
            String fullName = request.getParameter("fullName");
            String password = request.getParameter("password");
            String confirm = request.getParameter("confirm");
            String roleName = request.getParameter("roleName");
            String address = request.getParameter("address");
            String birthday = request.getParameter("birthday");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            UserDAO userDAO = new UserDAO();
            
            boolean checkValidation = true;
            boolean checkDuplicate = userDAO.checkDuplicate(userID);
            if (checkDuplicate) {
                checkValidation = false;
                userError.setUserIDError("UserID is duplicated!!!");
            }
            
            if (userID.length() < 1 || userID.length() > 10) {
                checkValidation = false;
                userError.setUserIDError("UserID must be in [1, 10]!!");
            }
            
            if (fullName.length() < 2 || fullName.length() > 20) {
                checkValidation = false;
                userError.setFullNameError("FullName must be in [3, 20]!!");
            }
            
            if (!password.equals(confirm)) {
                checkValidation = false;
                userError.setConfirmError("Two passwords are not the same!!");
            }
            
            if (address.length() < 3 || address.length() > 50) {
                checkValidation = false;
                userError.setAddressError("Address must be in [3,50]");
            }
            
            if (phone.length() != 10) {
                checkValidation = false;
                userError.setPhoneError("Phone must has 10 numbers");
            }
            
            if (email.length() < 11) {
                checkValidation = false;
                userError.setEmailError("Email must from 11 characters: Ex x@gmail.com");
            }
            
            if (checkValidation) {
                UserDTO user = new UserDTO(userID, fullName, password, roleName, address, birthday, phone, email);
                boolean checkCreate = userDAO.create(user);
                if (checkCreate) {
                    url = SUCCESS;
                }
            } else {
                request.setAttribute("USER_ERROR", userError);
            }
        } catch (Exception e) {
            log ("Error at CreateController: " + e.toString());
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
