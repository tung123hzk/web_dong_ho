<?php
session_start();
require_once '../../connect.php';

$error = '';
$success = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['userName']);
    $password = $_POST['passWord'];
    $enterPass = $_POST['enterPassWord'];

    if (empty($username) || empty($password) || empty($enterPass)) {
        $error = 'Vui lòng điền đầy đủ thông tin.';
    } elseif ($password !== $enterPass) {
        $error = 'Mật khẩu không khớp.';
    } else {
        $stmt = $conn->prepare("SELECT * FROM `user_admin` WHERE `userName` = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $updateStmt = $conn->prepare("UPDATE `user_admin` SET `passWord` = ? WHERE `userName` = ?");
            $updateStmt->bind_param("ss", $password, $username);

            if ($updateStmt->execute()) {
                $success = 'Cập nhật mật khẩu thành công.';
            } else {
                $error = 'Không thể cập nhật mật khẩu.';
            }
        } else {
            $error = 'Tài khoản không tồn tại.';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quên Mật Khẩu</title>
    <link rel="stylesheet" href="../LoGin/loGin.css">
    <link rel="icon" href="../img/icon/icon-watch-home.svg">
</head>
<body>
    <div class="login">
        <div class="login__body">
            <div class="login-body__child login__child--grow2">
                <div class="heading--layout__logo"><a href="index.php" style="color: #22a6b3 !important;">VietTung.Swatch</a></div>
            </div>
            <div class="login-body__child login__child--bgblur">
                <form action="" method="POST">
                    <h1 class="login-child__title">QUÊN MẬT KHẨU</h1>
                    <div class="login-child__User">
                        <label for="inputUser">Tên đăng nhập</label>
                    </div>
                    <div class="login-child__inputUser">
                        <input type="text" name="userName" id="inputUser" placeholder="Nhập tên đăng nhập" required />
                    </div>
                    <div class="login-child__Pass">
                        <label for="inputPass">Mật khẩu mới</label>
                    </div>
                    <div class="login-child__inputPass">
                        <input type="password" name="passWord" id="inputPass" placeholder="Nhập mật khẩu mới" required />
                    </div>
                    <div class="login-child__Pass">
                        <label for="inputPassConfirm">Xác nhận mật khẩu</label>
                    </div>
                    <div class="login-child__inputPass">
                        <input type="password" name="enterPassWord" id="inputPassConfirm" placeholder="Xác nhận mật khẩu mới" required />
                    </div>
                    <?php if ($error): ?>
                        <div class="login__child--infomation"><?php echo htmlspecialchars($error); ?></div>
                    <?php endif; ?>
                    <?php if ($success): ?>
                        <div class="login__child--success"><?php echo htmlspecialchars($success); ?></div>
                    <?php endif; ?>
                    <div class="login-child__btn">
                        <button type="submit" class="btn__Login" name="updatePass">Cập nhật mật khẩu</button>
                        <a href="../LoGin/loGin.php"><button type="button" class="btn__Or btn__Or--red">Quay lại đăng nhập</button></a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>