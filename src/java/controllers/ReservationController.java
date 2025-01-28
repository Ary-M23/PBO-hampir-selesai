/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

/**
 *
 * @author asus
 */

import models.Reservasi;
import java.sql.SQLException;

public class ReservationController {
    public int createReservation(String name, String phone, String checkin, String checkout, String guests, String roomType, String paymentMethod) {
        Reservasi reservasi = new Reservasi(name, phone, checkin, checkout, guests, roomType, paymentMethod);
        try {
            return reservasi.saveToDatabase(); // Simpan ke database dan dapatkan ID
        } catch (SQLException e) {
            System.err.println("Error saat menyimpan reservasi: " + e.getMessage());
            return -1; // Indikasi kesalahan
        }
    }

    public Reservasi getReservationById(int id) {
        try {
            return Reservasi.getById(id); // Ambil data berdasarkan ID
        } catch (SQLException e) {
            System.err.println("Error saat mengambil reservasi: " + e.getMessage());
            return null;
        }
    }
}