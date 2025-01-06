<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservasi Kamar</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
     Header 
    <header class="relative bg-cover bg-center h-[40vh]" style="background-image: url('gambar/reser.webp');">
        <div class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center">
            <div class="text-center text-white space-y-4">
                <h1 class="text-4xl font-bold">Reservasi Kamar</h1>
                <p class="text-lg">Rasakan kenyamanan terbaik bersama kami</p>
            </div>
        </div>
    </header>

     Reservation Form 
    <main class="py-10" "bg-gray-100" style="background-color: #f5e4c8;">
        <section class="max-w-4xl mx-auto bg-white p-8 rounded-lg shadow-lg">
            <h2 class="text-2xl font-bold text-gray-800 text-center mb-6">Formulir Reservasi</h2>
            <form action="pembayaran.jsp" method="post" class="space-y-6">
                 Nama 
                <div>
                    <label for="name" class="block text-gray-700 font-medium">Nama Lengkap:</label>
                    <input type="text" id="name" name="name" required placeholder="Masukkan nama lengkap Anda" class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                </div>
                
                 Nomor Telepon 
                <div>
                    <label for="phone" class="block text-gray-700 font-medium">Nomor Telepon:</label>
                    <input type="tel" id="phone" name="phone" required placeholder="Masukkan nomor telepon Anda" class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                     Check-in 
                    <div>
                        <label for="checkin" class="block text-gray-700 font-medium">Tanggal Check-in:</label>
                        <input type="date" id="checkin" name="checkin" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>
                     Check-out 
                    <div>
                        <label for="checkout" class="block text-gray-700 font-medium">Tanggal Check-out:</label>
                        <input type="date" id="checkout" name="checkout" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                     Jumlah Tamu 
                    <div>
                        <label for="guests" class="block text-gray-700 font-medium">Jumlah Tamu:</label>
                        <select id="guests" name="guests" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                            <option value="1">1 Tamu</option>
                            <option value="2">2 Tamu</option>
                            <option value="3">3 Tamu</option>
                            <option value="4">4 Tamu</option>
                            <option value="5">5 Tamu</option>
                            <option value="6">6 Tamu</option>
                        </select>
                    </div>
                     Tipe Kamar 
                    <div>
                        <label for="room-type" class="block text-gray-700 font-medium">Tipe Kamar:</label>
                        <select id="room-type" name="room-type" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                            <option value="standard">Standard</option>
                            <option value="deluxe">Deluxe</option>
                            <option value="suite">Suite</option>
                        </select>
                    </div>
                </div>

                 Metode Pembayaran 
                <div>
                    <h3 class="text-lg font-bold text-gray-700 mb-4">Metode Pembayaran:</h3>
                    <div class="space-y-4">
                         E-wallet 
                        <div class="space-y-2">
                            <p class="font-medium">E-wallet:</p>
                            <div class="flex items-center gap-4">
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="dana" required class="mr-2">
                                    <img src="gambar/dana.webp" alt="Dana" class="h-8">
                                </label>
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="Ovo" required class="mr-2">
                                    <img src="gambar/ovo.webp" alt="Gopay" class="h-8">
                                </label>
                            </div>
                        </div>
                         Virtual Account 
                        <div class="space-y-2">
                            <p class="font-medium">Virtual Account Bank:</p>
                            <div class="flex items-center gap-4">
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="bri" required class="mr-2">
                                    <img src="gambar/bri.webp" alt="Bank BRI" class="h-8">
                                </label>
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="mandiri" required class="mr-2">
                                    <img src="gambar/mandiri.webp" alt="Bank Mandiri" class="h-8">
                                </label>
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="bca" required class="mr-2">
                                    <img src="gambar/bca.webp" alt="Bank BCA" class="h-8">
                                </label>
                            </div>
                        </div>
                         QRIS 
                        <div class="space-y-2">
                            <p class="font-medium">QRIS:</p>
                            <label class="flex items-center">
                                <input type="radio" name="payment-method" value="qris" required class="mr-2">
                                <img src="gambar/qris.webp" alt="QRIS" class="h-8">
                            </label>
                        </div>
                    </div>
                </div>

                <div>
                    <button type="submit" class="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition">
                        Pesan Sekarang
                    </button>
                </div>
            </form>
        </section>
    </main>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservasi Kamar</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <!-- Header -->
    <header class="relative bg-cover bg-center h-[40vh]" style="background-image: url('gambar/reser.webp');">
        <div class="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center">
            <div class="text-center text-white space-y-4">
                <h1 class="text-4xl font-bold">Reservasi Kamar</h1>
                <p class="text-lg">Rasakan kenyamanan terbaik bersama kami</p>
            </div>
        </div>
    </header>

    <!-- Reservation Form -->
    <main class="py-10" style="background-color: #f5e4c8;">
        <section class="max-w-4xl mx-auto bg-white p-8 rounded-lg shadow-lg">
            <h2 class="text-2xl font-bold text-gray-800 text-center mb-6">Formulir Reservasi</h2>
            <form action="pembayaran.jsp" method="POST" class="space-y-6">
                <!-- Nama -->
                <div>
                    <label for="name" class="block text-gray-700 font-medium">Nama Lengkap:</label>
                    <input type="text" id="name" name="name" required placeholder="Masukkan nama lengkap Anda" class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                </div>
                
                <!-- Nomor Telepon -->
                <div>
                    <label for="phone" class="block text-gray-700 font-medium">Nomor Telepon:</label>
                    <input type="tel" id="phone" name="phone" required placeholder="Masukkan nomor telepon Anda" class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Check-in -->
                    <div>
                        <label for="checkin" class="block text-gray-700 font-medium">Tanggal Check-in:</label>
                        <input type="date" id="checkin" name="checkin" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>
                    <!-- Check-out -->
                    <div>
                        <label for="checkout" class="block text-gray-700 font-medium">Tanggal Check-out:</label>
                        <input type="date" id="checkout" name="checkout" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <!-- Jumlah Tamu -->
                    <div>
                        <label for="guests" class="block text-gray-700 font-medium">Jumlah Tamu:</label>
                        <select id="guests" name="guests" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                            <option value="1">1 Tamu</option>
                            <option value="2">2 Tamu</option>
                            <option value="3">3 Tamu</option>
                            <option value="4">4 Tamu</option>
                            <option value="5">5 Tamu</option>
                            <option value="6">6 Tamu</option>
                        </select>
                    </div>
                    <!-- Tipe Kamar -->
                    <div>
                        <label for="room-type" class="block text-gray-700 font-medium">Tipe Kamar:</label>
                        <select id="room-type" name="room-type" required class="w-full p-3 mt-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                            <option value="standard">Standard</option>
                            <option value="deluxe">Deluxe</option>
                            <option value="suite">Suite</option>
                        </select>
                    </div>
                </div>

                <!-- Metode Pembayaran -->
                <div>
                    <h3 class="text-lg font-bold text-gray-700 mb-4">Metode Pembayaran:</h3>
                    <div class="space-y-4">
                        <!-- E-wallet -->
                        <div class="space-y-2">
                            <p class="font-medium">E-wallet:</p>
                            <div class="flex items-center gap-4">
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="dana" required class="mr-2">
                                    <img src="gambar/dana.webp" alt="Dana" class="h-8">
                                </label>
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="Ovo" required class="mr-2">
                                    <img src="gambar/ovo.webp" alt="OVO" class="h-8">
                                </label>
                            </div>
                        </div>
                        <!-- Virtual Account -->
                        <div class="space-y-2">
                            <p class="font-medium">Virtual Account Bank:</p>
                            <div class="flex items-center gap-4">
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="bri" required class="mr-2">
                                    <img src="gambar/bri.webp" alt="Bank BRI" class="h-8">
                                </label>
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="mandiri" required class="mr-2">
                                    <img src="gambar/mandiri.webp" alt="Bank Mandiri" class="h-8">
                                </label>
                                <label class="flex items-center">
                                    <input type="radio" name="payment-method" value="bca" required class="mr-2">
                                    <img src="gambar/bca.webp" alt="Bank BCA" class="h-8">
                                </label>
                            </div>
                        </div>
                        <!-- QRIS -->
                        <div class="space-y-2">
                            <p class="font-medium">QRIS:</p>
                            <label class="flex items-center">
                                <input type="radio" name="payment-method" value="qris" required class="mr-2">
                                <img src="gambar/qris.webp" alt="QRIS" class="h-8">
                            </label>
                        </div>
                    </div>
                </div>

                <div>
                    <button type="submit" class="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition">
                        Pesan Sekarang
                    </button>
                </div>
            </form>
        </section>
    </main>
</body>
</html>
