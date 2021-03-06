/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.FormBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cokers
 */
@WebServlet(name = "FormValidationServlet", urlPatterns = {"/FormValidationServlet"})
public class FormValidationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Cache-Control", "no-cache");
        ServletContext sc = this.getServletContext();
        FormBean b = (FormBean) sc.getAttribute("b");
        if(b == null){
            b = new FormBean();
            sc.setAttribute("b", b);
        }
        b.setFName(request.getParameter("FName"));
        b.setLName(request.getParameter("LName"));
        b.setUserID(request.getParameter("UserID"));
        b.setPassword(request.getParameter("Password"));
        b.setRePassword(request.getParameter("RePassword"));
        b.setAlias(request.getParameter("alias"));
        b.setCountryOfRes(request.getParameter("CountryOfRes"));
        b.setCity(request.getParameter("City"));
        b.setLanguage(request.getParameter("Language"));
        b.setSecurityQues(request.getParameter("SecurityQues"));
        b.setSecurityAns(request.getParameter("SecurityAns"));
        b.setContactEmail(request.getParameter("NC_CHECK_EMAIL"));
        b.setContactOther(request.getParameter("NC_CHECK_OTHER"));
        if(b.isValid()){
            request.getRequestDispatcher("/congratulations.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("/InvalidForm.jsp").forward(request, response);
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
