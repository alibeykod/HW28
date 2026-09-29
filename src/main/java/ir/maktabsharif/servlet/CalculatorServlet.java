package ir.maktabsharif.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
@WebServlet(name = "calculator" , value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String customerName = req.getParameter("customerName");
        String productName  = req.getParameter("productName");
        double productPrice = Double.parseDouble(req.getParameter("productPrice"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        double finalPrice = quantity * productPrice;

        HttpSession session = req.getSession();

        session.setAttribute("customerName" , customerName);
        session.setAttribute("productName" , productName);
        session.setAttribute("productPrice" , productPrice);
        session.setAttribute("quantity" , quantity);
        session.setAttribute("finalPrice" , finalPrice);

        req.setAttribute("customerName", customerName);
        req.setAttribute("productName", productName);
        req.setAttribute("productPrice", productPrice);
        req.setAttribute("quantity", quantity);
        req.setAttribute("finalPrice", finalPrice);

        Cookie cookie = new Cookie("customerName" , customerName);
        resp.addCookie(cookie);

        req.getRequestDispatcher("/result.jsp").forward(req, resp);
    }
}

