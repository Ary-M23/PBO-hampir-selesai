/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author refan
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import utils.DatabaseConnection;

public class Reservasi {
    private int idPelanggan;
    private int idKamar;
    private int idMetodeTunai;
    private int idMetodeTransfer;
    private String idStaff;
    private String tanggalReservasi;

    public Reservasi(int idPelanggan, int idKamar, int idMetodeTunai, int idMetodeTransfer, String idStaff, String tanggalReservasi) {
        this.idPelanggan = idPelanggan;
        this.idKamar = idKamar;
        this.idMetodeTunai = idMetodeTunai;
        this.idMetodeTransfer = idMetodeTransfer;
        this.idStaff = idStaff;
        this.tanggalReservasi = tanggalReservasi;
    }

    // Getter dan Setter
    public int getIdPelanggan() {
        return idPelanggan;
    }

    public void setIdPelanggan(int idPelanggan) {
        this.idPelanggan = idPelanggan;
    }

    public int getIdKamar() {
        return idKamar;
    }

    public void setIdKamar(int idKamar) {
        this.idKamar = idKamar;
    }

    public int getIdMetodeTunai() {
        return idMetodeTunai;
    }

    public void setIdMetodeTunai(int idMetodeTunai) {
        this.idMetodeTunai = idMetodeTunai;
    }

    public int getIdMetodeTransfer() {
        return idMetodeTransfer;
    }

    public void setIdMetodeTransfer(int idMetodeTransfer) {
        this.idMetodeTransfer = idMetodeTransfer;
    }

    public String getIdStaff() {
        return idStaff;
    }

    public void setIdStaff(String idStaff) {
        this.idStaff = idStaff;
    }

    public String getTanggalReservasi() {
        return tanggalReservasi;
    }

    public void setTanggalReservasi(String tanggalReservasi) {
        this.tanggalReservasi = tanggalReservasi;
    }

    // Simpan data ke database
    public void saveToDatabase() throws SQLException {
        String query = "INSERT INTO Reservasi (tanggalReservasi, idPelanggan, idKamar, idMetodeTunai, idMetodeTransfer, idStaff) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, this.tanggalReservasi);
            statement.setInt(2, this.idPelanggan);
            statement.setInt(3, this.idKamar);
            statement.setInt(4, this.idMetodeTunai);
            statement.setInt(5, this.idMetodeTransfer);
            statement.setString(6, this.idStaff);

            statement.executeUpdate();
        }
    }
}