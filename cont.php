<?php
include "../connect.php"; // Đảm bảo đường dẫn đúng đến file connect.php
global $conn;

// Kiểm tra kết nối
if (!$conn) {
    die('Không thể kết nối đến cơ sở dữ liệu: ' . mysqli_connect_error());
}

// Khởi tạo biến $message
$message = "";

// Kiểm tra nếu form được gửi
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $content = htmlspecialchars($_POST['message']);

    // Chuẩn bị câu lệnh SQL để chèn dữ liệu vào bảng
    $sql = "INSERT INTO lien_he (ten, email, noidung) VALUES ('$name', '$email', '$content')";

    // Thực thi truy vấn và kiểm tra kết quả
    if (mysqli_query($conn, $sql)) {
        $message = '<div class="message success">Liên hệ của bạn đã được gửi thành công!</div>';
    } else {
        $message = '<div class="message error">Lỗi: Không thể gửi liên hệ. Vui lòng thử lại sau.</div>';
    }
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ với quản trị viên</title>
    <style>
        .contact-form {
            background-color: #f9f9f9;
            padding: 20px;
            max-width: 400px;
            margin: 50px auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .contact-form h4 {
            margin-bottom: 15px;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .contact-form button {
            background-color: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #0056b3;
        }
        .message {
            padding: 15px;
            margin: 15px 0;
            border-radius: 5px;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
        }
    </style>
</head>
<body>

<div class="contact-form">
    <h4>Liên hệ với quản trị viên</h4>
    <!-- Hiển thị thông báo -->
    <?php if (!empty($message)) echo $message; ?>
    
    <form method="POST" action="">
        <label for="name">Tên của bạn:</label>
        <input type="text" id="name" name="name" required placeholder="Nhập tên của bạn">

        <label for="email">Email của bạn:</label>
        <input type="email" id="email" name="email" required placeholder="Nhập email của bạn">

        <label for="message">Nội dung:</label>
        <textarea id="message" name="message" rows="5" required placeholder="Nhập nội dung liên hệ"></textarea>

        <button type="submit">Gửi liên hệ</button>
    </form>
</div>

</body>
</html>
