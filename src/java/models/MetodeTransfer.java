/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author asus
 */
public class MetodeTransfer extends Pembayaran {
    private String bank;

    public MetodeTransfer(double totalPembayaran, String bank) {
        super(totalPembayaran);
        this.bank = bank;
    }

    @Override
    public void buatPembayaran() {
        System.out.println("Pembayaran transfer ke bank " + bank + " sebesar Rp " + totalPembayaran + " berhasil.");
    }
}
