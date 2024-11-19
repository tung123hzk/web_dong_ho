<?php
session_start();
require_once '../../connect.php';

$error = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['userName']);
    $password = $_POST['passWord'];

    if (empty($username) || empty($password)) {
        $error = 'Vui lòng nhập đầy đủ thông tin đăng nhập.';
    } else {
        $stmt = $conn->prepare("SELECT * FROM `user_admin` WHERE `userName` = ? AND `passWord` = ?");
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $user = $result->fetch_assoc();

            if ($user['role'] == 'admin') {
                session_start();
                $_SESSION['loGinAdmin'] = [
                    "fullName" => $user["Name"],
                    "userName" => $user["userName"],
                    "passWord" => $user["passWord"]
                ];
                header("Location: ../../admin/listOrder.php");
                  exit;
            } else {
                $_SESSION['loGin'] = [
                    "fullName" => $user["Name"],
                    "userName" => $user["userName"]
                ];

                header("Location: ../../index.php");
            }
            exit;
        } else {
            $error = 'Sai tài khoản hoặc mật khẩu.';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng Nhập</title>
    <link rel="icon" href="../img/icon/icon-watch-home.svg">
    <link rel="stylesheet" href="loGin.css" />
</head>
<body>
    <div class="login"style="background-image: url('https://images.pexels.com/photos/277319/pexels-photo-277319.jpeg');">
        
        <div class="login__body">
            <div class="login-body__child login__child--grow2">
                <div class="heading--layout__logo"><a href="index.php" style="color: #22a6b3 !important;">VietTung.Swatch</a></div>
            </div>
            <div class="login-body__child login__child--bgblur" style="background-image: url('https://liveinrugged.com/wp/wp-content/uploads/2022/11/rolex_2022_deepseachallenge_05.jpg');">
                <form action="" method="POST">
                    <h1 class="login-child__title">ĐĂNG NHẬP</h1>
                    <div class="login-child__User">
                        <label for="inputUser">Tên đăng nhập</label>
                    </div>
                    <div class="login-child__inputUser">
                        <input type="text" name="userName" id="inputUser" placeholder="Nhập tên đăng nhập" required />
                    </div>
                    <div class="login-child__Pass">
                        <label for="inputPass">Mật khẩu</label>
                    </div>
                    <div class="login-child__inputPass">
                        <input type="password" name="passWord" id="inputPass" placeholder="Nhập mật khẩu" required />
                    </div>
                    <?php if ($error): ?>
                        <div class="login__child--infomation"><?php echo htmlspecialchars($error); ?></div>
                    <?php endif; ?>
                    <div class="login-child__option">
                        <div class="login__child--optionOne">
                            <input type="checkbox" id="checked" />
                            <label for="checked">Hiện mật khẩu</label>
                        </div>
                        <a href="../ForGetPass/forGetPass.php">Quên mật khẩu</a>
                    </div>
                    <div class="login-child__btn">
                        <button type="submit" class="btn__Login" name="signIn">Đăng nhập</button>
                        <a href="../createaUser/createa.php">
                            <button type="button" class="btn__Or btn__Or--red">Tạo tài khoản</button>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        document.getElementById('checked').addEventListener('change', function() {
            document.getElementById('inputPass').type = this.checked ? 'text' : 'password';
        });
    </script>
</body>
</html>