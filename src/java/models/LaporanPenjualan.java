/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author asus
 */
public class LaporanPenjualan {
    private String idLaporan;
    private String tanggalLaporan;
    private double totalPendapatan;
    private int totalReservasi;

    public LaporanPenjualan(String idLaporan, String tanggalLaporan) {
        this.idLaporan = idLaporan;
        this.tanggalLaporan = tanggalLaporan;
        this.totalPendapatan = 0.0;
        this.totalReservasi = 0;
    }

    public void generateLaporan() {
        System.out.println("Laporan ID: " + idLaporan);
        System.out.println("Tanggal: " + tanggalLaporan);
        System.out.println("Total Pendapatan: Rp " + totalPendapatan);
        System.out.println("Total Reservasi: " + totalReservasi);
    }

    public double getTotalPendapatan() {
        return totalPendapatan;
    }

    public int getTotalReservasi() {
        return totalReservasi;
    }

    public void setTotalPendapatan(double totalPendapatan) {
        this.totalPendapatan = totalPendapatan;
    }

    public void setTotalReservasi(int totalReservasi) {
        this.totalReservasi = totalReservasi;
    }
}
