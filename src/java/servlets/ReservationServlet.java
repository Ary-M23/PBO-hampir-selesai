package servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import controllers.ReservationController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String tanggalReservasi = request.getParameter("checkin");
        String roomType = request.getParameter("room-type");
        String paymentMethod = request.getParameter("payment-method");

        // Simpan data ke database (bisa melalui controller)
        ReservationController controller = new ReservationController();
        controller.createReservation(1, 1, 0, 1, "admin", tanggalReservasi);

        // Tambahkan data ke request untuk diteruskan ke pembayaran.jsp
        request.setAttribute("name", name);
        request.setAttribute("tanggalReservasi", tanggalReservasi);
        request.setAttribute("roomType", roomType);
        request.setAttribute("paymentMethod", paymentMethod);

        // Forward ke pembayaran.jsp
        request.getRequestDispatcher("jsp/pembayaran.jsp").forward(request, response);
    }
}