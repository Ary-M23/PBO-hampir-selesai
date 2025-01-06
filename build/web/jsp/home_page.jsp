<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Aplikasi Pemesanan Hotel</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@/components/ui/dist/styles.css">
    <style>
        .hotel-item {
            position: relative;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s, border 0.3s;
        }
        
        body {
            background-image: url('gambar/hotel.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }


.hotel-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
    border: 3px solid #000080; /* Border biru tua */
    background-color: white; /* Memastikan background tetap putih */
}

.hotel-item:hover .hotel-content,
.hotel-item:hover .hotel-price {
    color: black; /* Mengubah warna teks kembali ke hitam saat hover */
}

        
    </style>
</head>
<body>
    <div class="container mx-auto py-10">
       <header class="shadow-md p-4 rounded-lg flex justify-center items-center" style="background-image: linear-gradient(to right, #696969, #D3D3D3, #696969);">
            <h1 class="text-2xl font-bold text-center text-black">Aplikasi Pemesanan Hotel</h1>
        </header>

        <main class="mt-8">
            <h2 class="text-xl font-bold mb-4">List Hotel</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-5 gap-4">
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel1.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Beachfront Paradise Resort</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 500.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel2.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Mountain Lodge Retreat</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 550.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel3.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Futuristic Skyline Hotel</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 600.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel4.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Zen Garden Ryokan</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 650.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel5.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Vintage European Charm Hotel</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 700.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel6.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Minimalist Urban Stay</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 750.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel7.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Art Gallery Boutique Hotel</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 800.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel8.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Tropical Overwater Resort</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 850.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel9.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">Opulent Palace Hotel</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 900.000</span>
                        </div>
                    </a>
                </div>
                <div class="hotel-item bg-white shadow-md p-4 rounded-lg">
                    <a href="jsp/reservasi.jsp" class="block">
                        <img src="gambar/hotel10.webp" alt="Hotel Image" class="w-full h-32 object-cover rounded-t-lg">
                        <div class="hotel-content">
                            <h3 class="text-lg font-bold mt-2">City View Budget Inn</h3>
                            <p class="text-gray-500">Deskripsi hotel singkat</p>
                        </div>
                        <div class="hotel-price mt-2">
                            <span class="bg-blue-100 text-blue-800 px-2 py-1 rounded-full text-xs">4.5 ★</span>
                            <span class="bg-gray-100 text-gray-600 px-2 py-1 rounded-full text-xs">Rp 950.000</span>
                        </div>
                    </a>
                </div>
            </div>
        </main>
    </div>
</body>
</html>