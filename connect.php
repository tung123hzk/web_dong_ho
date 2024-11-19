<?php
$servername = "localhost"; // Tên máy chủ CSDL
$username = "root"; // Tên đăng nhập CSDL
$password = ""; // Mật khẩu CSDL
$dbname = "webdongho"; // Tên CSDL
global $conn;

// Tạo kết nối
$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die('không kết nối được ' . mysqli_error(($con)));
}

?>