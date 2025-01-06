/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author asus
 */
public class StaffHotel {
    private String idStaff;
    private String namaStaf;
    private String kataSandi;
    private String jabatan;

    public StaffHotel(String idStaff, String namaStaf, String kataSandi, String jabatan) {
        this.idStaff = idStaff;
        this.namaStaf = namaStaf;
        this.kataSandi = kataSandi;
        this.jabatan = jabatan;
    }

    public void login() {
        System.out.println(namaStaf + " berhasil login.");
    }

    public void logout() {
        System.out.println(namaStaf + " berhasil logout.");
    }

    public void ubahKataSandi(String kataSandiBaru) {
        this.kataSandi = kataSandiBaru;
        System.out.println("Kata sandi berhasil diubah.");
    }

    public String getJabatan() {
        return jabatan;
    }
}
