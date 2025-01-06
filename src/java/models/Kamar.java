/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author asus
 */
public class Kamar {
    private String tipeKamar;
    private double harga;
    private boolean status; // true = tersedia, false = tidak tersedia

    public Kamar(String tipeKamar, double harga, boolean status) {
        this.tipeKamar = tipeKamar;
        this.harga = harga;
        this.status = status;
    }

    public String getTipeKamar() {
        return tipeKamar;
    }

    public double getHargaKamar() {
        return harga;
    }

    public boolean getStatusKamar() {
        return status;
    }

    public void setStatusKamar(boolean status) {
        this.status = status;
    }
}
