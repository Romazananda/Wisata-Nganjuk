<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Contoh pengecekan login (ganti ini dengan validasi sesuai dengan aplikasi Anda)
    $registeredUsername = "user123"; // Contoh: dari database
    $registeredPassword = "pass123"; // Contoh: dari database

    if ($username === $registeredUsername && $password === $registeredPassword) {
        // Jika login berhasil, atur cookie
        setcookie("loggedInUsername", $username, time() + (86400 * 30), "/"); // Cookie berlaku selama 30 hari

        // Redirect ke halaman admin
        header("Location: admin.html");
        exit();
    } else {
        // Jika login gagal, tampilkan pesan kesalahan
        echo '<script>alert("Invalid username or password. Please try again.");</script>';
    }
}
?>
