/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package samle.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maihuutai
 */
public class MainController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String USER_SEARCH = "UserSearch";
    private static final String USER_SEARCH_CONTROLLER = "UserSearchController";
    private static final String ADMIN_SEARCH = "Search";
    private static final String ADMIN_SEARCH_CONTROLLER = "AdminSearchController";
    private static final String UPDATE = "Update";
    private static final String UPDATE_CONTROLLER = "UpdateController";
    private static final String DELETE = "Delete";
    private static final String DELETE_CONTROLLER = "DeleteController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String CREATE_PRODUCT = "CreateProduct";
    private static final String CREATE_PRODUCT_CONTROLLER = "CreateProductController";
    private static final String CREATE_USER = "Create User";
    private static final String CREATE_USER_CONTROLLER = "CreateUserController";
    
    private static final String ADD_TO_CART = "AddToCart";
    private static final String ADD_TO_CART_CONTROLLER = "AddToCartController";
    private static final String REMOVE_PRODUCT_CART = "RemoveProductCart";
    private static final String REMOVE_PRODUCT_CART_CONTROLLER = "RemoveProductCartController";
    private static final String EDIT_PRODUCT_CART = "EditProductCart";
    private static final String EDIT_PRODUCT_CART_CONTROLLER = "EditProductCartController";
    private static final String CHECK_OUT = "Checkout";
    private static final String CHECK_OUT_CONTROLLER = "CheckoutController";
    private static final String ORDER_PRODUCT_CONTROLLER ="OrderProductController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String url = ERROR;
        try {
            String action = request.getParameter("action");
            if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;
            } else if (USER_SEARCH.equals(action)) {
                url = USER_SEARCH_CONTROLLER;
            } else if (UPDATE.equals(action)) {
                url = UPDATE_CONTROLLER;
            } else if (ADMIN_SEARCH.equals(action)) {
                url = ADMIN_SEARCH_CONTROLLER;
            } else if (DELETE.equals(action)) {
                url = DELETE_CONTROLLER;
            } else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROLLER;
            } else if (CREATE_PRODUCT.equals(action)) {
                url = CREATE_PRODUCT_CONTROLLER;
            } else if (ADD_TO_CART.equals(action)) {
                url = ADD_TO_CART_CONTROLLER;
            } else if (REMOVE_PRODUCT_CART.equals(action)) {
                url = REMOVE_PRODUCT_CART_CONTROLLER;
            } else if (EDIT_PRODUCT_CART.equals(action)) {
                url = EDIT_PRODUCT_CART_CONTROLLER;
            } else if (CREATE_USER.equals(action)) {
                url = CREATE_USER_CONTROLLER;
            } else if (CHECK_OUT.equals(action)) {
                url = CHECK_OUT_CONTROLLER;
            }
            else {
                url = ERROR;
            }
        } catch (Exception e) {
            e.printStackTrace();
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
