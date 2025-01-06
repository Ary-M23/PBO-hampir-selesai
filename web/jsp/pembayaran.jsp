
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
                    // Mengambil data dari form yang dikirimkan
                    String name = request.getParameter("name");
                    String phone = request.getParameter("phone");
                    String checkin = request.getParameter("checkin");
                    String checkout = request.getParameter("checkout");
                    String guests = request.getParameter("guests");
                    String roomType = request.getParameter("room-type");
                    String paymentMethod = request.getParameter("payment-method");

                    // Menangani jika data tidak ada (fallback)
                    if (name == null) {
                        name = "Nama tidak diketahui";
                    }
                    if (phone == null) {
                        phone = "Nomor telepon tidak diketahui";
                    }
                    if (checkin == null) {
                        checkin = "Tanggal check-in tidak diketahui";
                    }
                    if (checkout == null) {
                        checkout = "Tanggal check-out tidak diketahui";
                    }
                    if (guests == null) {
                        guests = "Jumlah tamu tidak diketahui";
                    }
                    if (roomType == null) {
                        roomType = "Jenis kamar tidak diketahui";
                    }
                    if (paymentMethod == null)
                        paymentMethod = "Metode pembayaran tidak diketahui";
                %>

                <!-- Tampilkan logo QRIS jika metode pembayaran adalah QRIS -->
                <%
                    if ("qris".equals(paymentMethod)) {
                %>
                <div class="text-center mb-6">
                    <img src="../gambar/QR.webp" alt="QRIS" class="mx-auto h-40 w-auto">
                </div>
                <%
                } else if ("dana".equals(paymentMethod)) {
                %>
                <div class="text-center mb-6">
                    <img src="../gambar/QR.webp" alt="Dana" class="mx-auto h-40 w-auto">
                </div>
                <%
                } else if ("Ovo".equals(paymentMethod)) {
                %>
                <div class="text-center mb-6">
                    <img src="../gambar/QR.webp" alt="OVO" class="mx-auto h-40 w-auto">
                </div>
                <%
                    }
                %>

                <!--Tampilan Nomor Virtual Account Bank-->
                <%
                    if ("bri".equals(paymentMethod)) {
                %>
                <div class="text-center mb-6">
                    <p class="text-lg font-bold text-gray-700">Nomor Virtual Account BRI:</p>
                    <p class="text-2xl font-mono text-blue-600">1234567890</p>
                </div>
                <%
                } else if ("mandiri".equals(paymentMethod)) {
                %>
                <div class="text-center mb-6">
                    <p class="text-lg font-bold text-gray-700">Nomor Virtual Account Mandiri:</p>
                    <p class="text-2xl font-mono text-blue-600">9876543210</p>
                </div>
                <%
                } else if ("bca".equals(paymentMethod)) {
                %>
                <div class="text-center mb-6">
                    <p class="text-lg font-bold text-gray-700">Nomor Virtual Account BCA:</p>
                    <p class="text-2xl font-mono text-blue-600">1122334455</p>
                </div>
                <%
                    }
                %>


                <div class="space-y-6">
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Nama Pemesan:</span>
                        <span><%= name%></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Nomor Telepon:</span>
                        <span><%= phone%></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Tanggal Check-in:</span>
                        <span><%= checkin%></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Tanggal Check-out:</span>
                        <span><%= checkout%></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Jumlah Tamu:</span>
                        <span><%= guests%></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Jenis Kamar:</span>
                        <span><%= roomType%></span>
                    </div>
                    <div class="flex items-center justify-between">
                        <span class="font-medium">Metode Pembayaran:</span>
                        <span><%= paymentMethod%></span>
                    </div>

                    <!-- Proses Pembayaran -->
                    <div class="flex items-center justify-between font-bold text-2xl">
                        <span>Total Bayar:</span>
                        <span>Rp 500.000</span>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
