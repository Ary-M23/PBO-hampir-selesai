/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author asus
 */
public abstract class Pembayaran {
    protected double totalPembayaran;

    public Pembayaran(double totalPembayaran) {
        this.totalPembayaran = totalPembayaran;
    }

    public abstract void buatPembayaran();

    public double getTotalPembayaran() {
        return totalPembayaran;
    }
}
