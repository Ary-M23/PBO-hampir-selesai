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

    public void createReservation(int idPelanggan, int idKamar, int idMetodeTunai, int idMetodeTransfer, String idStaff, String tanggalReservasi) {
        Reservasi reservasi = new Reservasi(idPelanggan, idKamar, idMetodeTunai, idMetodeTransfer, idStaff, tanggalReservasi);

        try {
            reservasi.saveToDatabase();
            System.out.println("Reservasi berhasil disimpan ke database.");
        } catch (SQLException e) {
            System.err.println("Terjadi kesalahan saat menyimpan reservasi: " + e.getMessage());
        }
    }
}