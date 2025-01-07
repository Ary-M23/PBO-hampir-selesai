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
import models.Reservasi;

@WebServlet(name="auth",urlPatterns = {"/auth"})
public class ReservationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("reservasi.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Ambil data dari form
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String guests = request.getParameter("guests");
        String roomType = request.getParameter("room-type");
        String paymentMethod = request.getParameter("payment-method");

        // Debugging log untuk memastikan data diterima
        System.out.println("Nama: " + name);
        System.out.println("Phone: " + phone);
        System.out.println("Checkin: " + checkin);
        System.out.println("Checkout: " + checkout);
        System.out.println("Guests: " + guests);
        System.out.println("Room Type: " + roomType);
        System.out.println("Payment Method: " + paymentMethod);

        // Simpan data ke database
        ReservationController controller = new ReservationController();
        int reservationId = controller.createReservation(name, phone, checkin, checkout, guests, roomType, paymentMethod);

        if (reservationId > 0) {
            // Ambil data yang baru disimpan
            Reservasi reservasi = controller.getReservationById(reservationId);

            // Teruskan data ke pembayaran.jsp
            request.setAttribute("reservation", reservasi);
            request.getRequestDispatcher("jsp/pembayaran.jsp").forward(request, response);
        } else {
            // Jika gagal, tampilkan pesan error
            response.getWriter().write("Error: Gagal menyimpan data ke database.");
        }
    }
}