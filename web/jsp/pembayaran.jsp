<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pembayaran</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
        <style>
            body {
                background: linear-gradient(to right, #696969, #D3D3D3, #696969);
            }
        </style>
    </head>
    <body>
        <header style="background-color: #f5e4c8; padding: 16px; border-radius: 8px; margin-bottom: 16px;">
            <h1 class="text-2xl font-bold mb-2">Pembayaran</h1>
        </header>
        <div class="container mx-auto py-10">
            <div class="bg-white shadow-md p-8 rounded-lg">
                <% 
                    // Ambil data dari request
                    models.Reservasi reservasi = (models.Reservasi) request.getAttribute("reservation");

                    if (reservasi == null) {
                %>
                    <div class="text-red-500 text-center font-bold">
                        Data reservasi tidak ditemukan.
                    </div>
                <% 
                    } else { 
                        // Dapatkan paymentMethod dari objek reservasi
                        String paymentMethod = reservasi.getPaymentMethod();
                %>
                    <!-- Informasi Reservasi -->
                    <div class="space-y-6">
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Nama Pemesan:</span>
                            <span><%= reservasi.getName() %></span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Nomor Telepon:</span>
                            <span><%= reservasi.getPhone() %></span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Tanggal Check-in:</span>
                            <span><%= reservasi.getCheckin() %></span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Tanggal Check-out:</span>
                            <span><%= reservasi.getCheckout() %></span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Jumlah Tamu:</span>
                            <span><%= reservasi.getGuests() %></span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Jenis Kamar:</span>
                            <span><%= reservasi.getRoomType() %></span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="font-medium">Metode Pembayaran:</span>
                            <span><%= paymentMethod %></span>
                        </div>
                    </div>

                    <!-- Tampilkan logo QRIS atau informasi lainnya sesuai metode pembayaran -->
                    <div class="text-center my-6">
                        <%
                            if ("qris".equals(paymentMethod)) {
                        %>
                        <img src="../gambar/QR.webp" alt="QRIS" class="mx-auto h-40 w-auto">
                        <%
                            } else if ("dana".equals(paymentMethod)) {
                        %>
                        <img src="../gambar/dana.webp" alt="Dana" class="mx-auto h-40 w-auto">
                        <%
                            } else if ("Ovo".equals(paymentMethod)) {
                        %>
                        <img src="../gambar/ovo.webp" alt="OVO" class="mx-auto h-40 w-auto">
                        <%
                            } else if ("bri".equals(paymentMethod)) {
                        %>
                        <p class="text-lg font-bold text-gray-700">Nomor Virtual Account BRI:</p>
                        <p class="text-2xl font-mono text-blue-600">1234567890</p>
                        <%
                            } else if ("mandiri".equals(paymentMethod)) {
                        %>
                        <p class="text-lg font-bold text-gray-700">Nomor Virtual Account Mandiri:</p>
                        <p class="text-2xl font-mono text-blue-600">9876543210</p>
                        <%
                            } else if ("bca".equals(paymentMethod)) {
                        %>
                        <p class="text-lg font-bold text-gray-700">Nomor Virtual Account BCA:</p>
                        <p class="text-2xl font-mono text-blue-600">1122334455</p>
                        <%
                            }
                        %>
                    </div>

                    <!-- Total Pembayaran -->
                    <div class="flex items-center justify-between font-bold text-2xl mt-6">
                        <span>Total Bayar:</span>
                        <span>Rp 500.000</span> <!-- Ganti dengan total pembayaran aktual jika tersedia -->
                    </div>
                <% 
                    } 
                %>
            </div>
        </div>
    </body>
</html>