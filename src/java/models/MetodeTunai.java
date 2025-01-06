/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author asus
 */
public class MetodeTunai extends Pembayaran {
    public MetodeTunai(double totalPembayaran) {
        super(totalPembayaran);
    }

    @Override
    public void buatPembayaran() {
        System.out.println("Pembayaran tunai sebesar Rp " + totalPembayaran + " berhasil.");
    }
}
