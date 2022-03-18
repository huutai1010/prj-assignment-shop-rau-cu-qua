/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package samle.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.shopping.Cart;
import sample.shopping.ProductDTO;

/**
 *
 * @author maihuutai
 */
@WebServlet(name = "CheckoutController", urlPatterns = {"/CheckoutController"})
public class CheckoutController extends HttpServlet {

    private static final String ERROR = "viewCart.jsp";
    private static final String SUCCESS = "OrderProductController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        HashMap<String, String> listErrorQuantityProduct = new HashMap<>();
        try {
            HttpSession session = request.getSession();
            List<ProductDTO> listProduct = (List<ProductDTO>) session.getAttribute("LIST_PRODUCT");
            if (session  != null) {
                Cart cart = (Cart) session.getAttribute("CART");
                if (cart != null) {
                    for (String cartProductKey: cart.getCart().keySet()) {
                        for (ProductDTO product: listProduct) {
                            int productQuantity = product.getQuantity();
                            int cartProQuantity = cart.getCart().get(cartProductKey).getQuantity();                            
                            if (cartProductKey.equals(product.getProductID()) && cartProQuantity > productQuantity) 
                                listErrorQuantityProduct.put(cartProductKey, "You bought " + cartProQuantity + " exceed " + productQuantity + " in warehouse.");                     
                        }
                    }
                    if (listErrorQuantityProduct.size() > 0) { 
                        request.setAttribute("LIST_ERROR_PRODUCT", listErrorQuantityProduct);
                    } else {
                        url = SUCCESS;
                    }
                }
            }
        } catch (Exception e) {
            log ("Error at CheckoutController: " + e.toString());
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
