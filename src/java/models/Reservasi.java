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
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DatabaseConnection;

public class Reservasi {
    private int id; // Tambahkan atribut id
    private String name;
    private String phone;
    private String checkin;
    private String checkout;
    private String guests;
    private String roomType;
    private String paymentMethod;

    // Konstruktor untuk data baru
    public Reservasi(String name, String phone, String checkin, String checkout, String guests, String roomType, String paymentMethod) {
        this.name = name;
        this.phone = phone;
        this.checkin = checkin;
        this.checkout = checkout;
        this.guests = guests;
        this.roomType = roomType;
        this.paymentMethod = paymentMethod;
    }

    // Konstruktor untuk data dari database (termasuk ID)
    public Reservasi(int id, String name, String phone, String checkin, String checkout, String guests, String roomType, String paymentMethod) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.checkin = checkin;
        this.checkout = checkout;
        this.guests = guests;
        this.roomType = roomType;
        this.paymentMethod = paymentMethod;
    }

    // Getter untuk semua atribut
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getCheckin() {
        return checkin;
    }

    public String getCheckout() {
        return checkout;
    }

    public String getGuests() {
        return guests;
    }

    public String getRoomType() {
        return roomType;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }

    public void setCheckout(String checkout) {
        this.checkout = checkout;
    }

    public void setGuests(String guests) {
        this.guests = guests;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }


    // Simpan data ke database
    public int saveToDatabase() throws SQLException {
        String query = "INSERT INTO Reservasi (name, phone, checkin, checkout, guests, roomType, paymentMethod) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS)) {

            statement.setString(1, this.name);
            statement.setString(2, this.phone);
            statement.setString(3, this.checkin);
            statement.setString(4, this.checkout);
            statement.setInt(5, Integer.parseInt(this.guests));
            statement.setString(6, this.roomType);
            statement.setString(7, this.paymentMethod);

            int affectedRows = statement.executeUpdate();
            if (affectedRows > 0) {
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        this.id = generatedKeys.getInt(1); // Simpan ID yang dihasilkan
                        return this.id;
                    }
                }
            }
            throw new SQLException("Gagal menyimpan data, tidak ada baris yang terpengaruh.");
        }
    }


    // Ambil data dari database berdasarkan ID
    public static Reservasi getById(int id) throws SQLException {
        String query = "SELECT * FROM Reservasi WHERE id = ?";
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setInt(1, id);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return new Reservasi(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("phone"),
                        resultSet.getString("checkin"),
                        resultSet.getString("checkout"),
                        resultSet.getString("guests"),
                        resultSet.getString("roomType"),
                        resultSet.getString("paymentMethod")
                    );
                }
            }
        }
        return null; // Jika ID tidak ditemukan
    }
}