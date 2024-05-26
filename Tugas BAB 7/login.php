<?php
// Ambil nilai yang dikirimkan dari form login
$username = $_POST['username'];
$password = $_POST['password'];

// Misalkan Anda memiliki validasi login di sini
// Contoh sederhana tanpa validasi, hanya untuk demonstrasi:
if ($username === "admin" && $password === "password") {
    // Setel cookie untuk menyimpan username
    setcookie('loggedInUsername', $username, time() + (86400 * 30), "/"); // Cookie berlaku selama 30 hari

    // Redirect ke halaman admin
    header("Location: admin.php");
    exit();
} else {
    // Jika login gagal, redirect kembali ke halaman login
    header("Location: login.html");
    exit();
}
?>