/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package samle.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.shopping.ProductDAO;
import sample.shopping.ProductDTO;
import sample.shopping.ProductError;
import sample.date.ValidDate;

/**
 *
 * @author maihuutai
 */
@WebServlet(name = "CreateProductController", urlPatterns = {"/CreateProductController"})
public class CreateProductController extends HttpServlet {

    private static final String ERROR = "createProduct.jsp";
    private static final String SUCCESS = "AdminSearchController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        ProductError productError = new ProductError();
        try {
            String productID = request.getParameter("productID");
            String productName = request.getParameter("productName");
            String image = request.getParameter("image");
            String strPrice = request.getParameter("price");
            float price = Float.parseFloat(strPrice);
            String strQuantity = request.getParameter("quantity");
            int quantity = Integer.parseInt(strQuantity);
            String categoryID = request.getParameter("categoryID");
            String importDate = request.getParameter("importDate");
            String usingDate = request.getParameter("usingDate");            
            ProductDAO productDAO = new ProductDAO();
            boolean checkValidation = true;
            
            boolean checkDuplicate = productDAO.checkDuplicate(productID);
            if (checkDuplicate) {
                checkValidation = false;
                productError.setProductIDError("productID duplicate!!!");
            }
            
            if (productID.length() < 1 || productID.length() > 10) {
                checkValidation = false;
                productError.setProductIDError("productID must be in [1,10]!!!");
            } 
            if (productName.length() < 3 || productName.length() > 20) {
                checkValidation = false;
                productError.setProductNameError("productName must be in [3,20]!!!");
            }
            if (quantity < 0) {
                checkValidation = false;
                productError.setQuantityError("productQuantity must be > 0");
            }
            if (price <= 0) {
                checkValidation = false;
                productError.setPriceError("price must be > 0");
            }
            
            String[] categoryIDChecks = {"1", "2", "3"};
            int count = 0;
            for (String checkCategoryID: categoryIDChecks) {
                if (checkCategoryID.equals(categoryID)) count += 1;
            }
            if (count == 0) {
                checkValidation = false;
                productError.setCategoryIDError("categoryID must be in 1, 2 or 3");
            }
            
            
            if (ValidDate.isImportDateBeforeToday(importDate)) {
                checkValidation = false;
                productError.setImportDateError("ImportDate must be after today");
            }
            if (ValidDate.isImportDateAfterUsingDate(importDate, usingDate)) {
                checkValidation = false;
                productError.setUsingDateError("Using date must after import date");
            }
            
            if (checkValidation) {
                ProductDTO product = new ProductDTO(productID, productName, image, price, quantity, categoryID, importDate, usingDate);
                boolean checkCreate = productDAO.create(product);
                if (checkCreate) {
                    url = SUCCESS;
                }
            } else {
                request.setAttribute("PRODUCT_ERROR", productError);
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
