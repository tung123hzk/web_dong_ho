<?php
include "connect.php";
global $conn;
$fullName = null;
$userName = null;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đồng Hồ Đeo Tay Thời Trang Chính Hãng Giá Rẻ</title>
    <link rel="stylesheet" href="trangChu/trangchu.css">
    <link rel="icon" href="img/icon/icon-watch-home.svg">
    <link rel="stylesheet" href="thư viện/bootstrap-icons-1.10.5/00font/bootstrap-icons.css">
    <link rel="stylesheet" href="thư viện/swiper/cdn.jsdelivr.net_npm_swiper@10.3.1_swiper-bundle.min.css">
    <link rel="stylesheet" href="thư viện/bootstrap/css/bootstrap.css">
</head>
<?php
session_start();
if (isset($_SESSION['loGin']["fullName"])) {
    $fullName  = $_SESSION['loGin']["fullName"];
    $userName = $_SESSION['loGin']["userName"];
}
?>

<body>
    <div class="inThebodyAll">
        <div class="theheader">

            <div class="theheader__heading">
                <div class="theheader__heading--laypout d-flex flex-row justify-content-between align-items-center">
                    <div class="heading--layout__logo"><a href="index.php" style="color: #1abc9c !important;">VietTung.Swatch</a></div>
                    <!-- xong logo  -->
                    <div class="d-flex flex-row justify-content-between align-items-center heading--layout__flex">
                        <div class="heading--layout__menu" style="cursor: pointer;">
                            Menu
                            <i class="bi bi-caret-down-fill"></i>
                            <ul class="heading--menu__item">
                                <li class="menu__item">
                                    <span class="menu__item--span">Phổ biến nhất</span>
                                    <ul>
                                        <?php
                                        $selectCategory0 = "SELECT * FROM `categories` WHERE `high_class` = 0";
                                        $queryCategory0 = mysqli_query($conn, $selectCategory0);
                                        while ($rowCategory = mysqli_fetch_array($queryCategory0)) {
                                        ?>
                                            <a href="trangtim/trangtimdanhmuc.php?id=<?php echo $rowCategory["category_id"] ?>">
                                                <li><?php echo $rowCategory["category_name"] ?></li>
                                            </a>
                                        <?php
                                        } ?>
                                    </ul>
                                </li>
                                <li class="menu__item">
                                    <span class="menu__item--span">Hàng cao cấp</span>
                                    <ul>
                                        <?php
                                        $selectCategory1 = "SELECT * FROM `categories` WHERE `high_class` = 1";
                                        $queryCategory1 = mysqli_query($conn, $selectCategory1);
                                        while ($rowCategory = mysqli_fetch_array($queryCategory1)) {
                                        ?>
                                            <a href="trangtim/trangtimdanhmuc.php?id=<?php echo $rowCategory["category_id"] ?>">
                                                <li><?php echo $rowCategory["category_name"] ?></li>
                                            </a>
                                        <?php
                                        } ?>
                                    </ul>
                                </li>
                                <li class="menu__item">
                                    <span class="menu__item--span">các hãng khác</span>
                                    <ul>
                                        <?php
                                        $selectCategory1 = "SELECT * FROM `categories` WHERE `high_class` = 2";
                                        $queryCategory1 = mysqli_query($conn, $selectCategory1);
                                        while ($rowCategory = mysqli_fetch_array($queryCategory1)) {
                                        ?>
                                            <a href="trangtim/trangtimdanhmuc.php?id=<?php echo $rowCategory["category_id"] ?>">
                                                <li><?php echo $rowCategory["category_name"] ?></li>
                                            </a>
                                        <?php
                                        } ?>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <a href="trangtim/trangBoy.php">
                            <div class="heading--layout__nam">Nam</div>
                        </a>
                        <a href="trangtim/trangGirl.php">
                            <div class="heading--layout__nu">Nữ</div>
                        </a>
                    </div>
                    <!-- xong menu  -->
                    <div class="d-flex flex-row">
                        <a href="trangGioHang/trangGioHang.php">
                            <div class="heading--layout__gioHang">
                                <i class="bi bi-cart4"></i>
                                <?php
                                if ($userName != null) {
                                    $cart__product = "SELECT * FROM `cart_product` WHERE `userName` LIKE '%$userName%'";
                                    $queryCart = mysqli_query($conn, $cart__product);
                                    $num = mysqli_num_rows($queryCart); ?>
                                    <p class="gioHang__soluong">(<?php echo $num ?>)</p>
                                <?php
                                }
                                ?>
                            </div>
                        </a>
                        <?php
                        if ($fullName == null) { ?>
                            <a href="login/LoGin/loGin.php">
                                <div id="heading--layout__user" class="heading--layout__yeuThich">
                                    <i class="bi bi-person-circle"></i>
                                </div>
                            </a>
                        <?php
                        } else { ?>
                            <div id="" class="heading--layout__logOut">
                                <?php echo ($fullName) ?>
                                <a href="login/LoGin/logOut.php" onclick="return confirm('BẠN CÓ MUỐN ĐĂNG XUẤT TÀI KHOẢN NÀY KHÔNG ?');">
                                    <div class="layout__logOut"> Đăng xuất </div>
                                </a>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                    <!-- xong Giỏ hàng yêu thích  và user-->
                </div>
            </div>
            <!-- xong hết  header  -->
            <div class="swiper mySwiper theHeader_img">
                <div class="swiper-wrapper">
                    <div class="swiper-pagination"></div>
                    <div class="swiper-slide">
                        <a href=""></a>
                        <img id="image" src="img/baner/baner1.jpg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="swiper-slide">
                        <img id="image" src="img/baner/banner2.jpg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="swiper-slide">
                        <img id="image" src="img/baner/baner3.jpg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="swiper-slide">
                        <img id="image" src="img/baner/banner-4.jpg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="swiper-slide">
                        <img id="image" src="img/baner/banner5.jpg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <!-- xong baner đầu trang  -->
        </div>
        <!-- xong  hết đầu trang web đầu trang -->
        <div class="theBody">
            <div class="layout__infomation d-flex flex-row justify-content-between">
                <div class="layout__infomation--item d-flex flex-row ustify-content-between ">
                    <div class="infomation--item__img">
                        <img src="img/icon/icon-watch.svg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="infomation--item__title">
                        <h6>Mẫu mã dạng dạng</h6>
                        <p>Hoàn tiền 20 lần nếu hàng giả</p>
                    </div>
                </div>
                <div class="layout__infomation--item d-flex flex-row ustify-content-between ">
                    <div class="infomation--item__img">
                        <img src="img/icon/icon-ship.svg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="infomation--item__title">
                        <h6>Miễn phí vận chuyển</h6>
                        <p>Giao hàng nhanh, đóng gói cẩn thận</p>
                    </div>
                </div>
                <div class="layout__infomation--item d-flex flex-row ustify-content-between ">
                    <div class="infomation--item__img">
                        <img src="img/icon/icon-trade.svg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="infomation--item__title">
                        <h6>Đổi hàng 7 ngày</h6>
                        <p>1 đổi 1 trong 7 ngày với sản phẩm lỗi</p>
                    </div>
                </div>
                <div class="layout__infomation--item d-flex flex-row ustify-content-between ">
                    <div class="infomation--item__img">
                        <img src="img/icon/icon-warranty.svg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="infomation--item__title">
                        <h6>Bảo hành 5 năm</h6>
                        <p>Thụ tục nhanh gọn, thay pin miễn phí</p>
                    </div>
                </div>
                <div class="layout__infomation--item d-flex flex-row ustify-content-between ">
                    <div class="infomation--item__img">
                        <img src="img/icon/icon-check.svg" alt="ảnh này không tồn tại trong web đồng hồ">
                    </div>
                    <div class="infomation--item__title">
                        <h6>Đeo trước trả sau</h6>
                        <p>Trả trước 1 phần, 2 phần còn lại trả sau</p>
                    </div>
                </div>
            </div>
            <!-- xong phần dưới baner  -->
            <div class="layout__donghoCaoCap">
                <div class="layout__donghoCaoCap__title">
                    <h2>ĐỒNG HỒ CAO CẤP</h2>
                    <style>
                        body{
                            font-family: Arial, sans-serif;
                            background-color: #e6f7ff;
                            text-align: center;
                        }
                    </style>
                </div>
                <div class="layout__donghoCaoCap">
                    <div class="swiper swiperss ">
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-wrapper">
                            <?php
                            $select = "SELECT * FROM `products` WHERE `discount` >= 30";
                            $queyrySelect = mysqli_query($conn, $select);
                            while ($row = mysqli_fetch_array($queyrySelect)) {
                            ?>
                                <div class="theproduct swiper-slide" style="text-align: left;">
                                    <a href="trangchitiet/trangchitiet.php?id=<?php echo $row['product_id']; ?>">
                                        <div class="card overflow-hidden theproduct__card" style="transition: color 0.1s linear;">
                                            <img src="<?php echo $row["image_url"] ?>" class="card-img-top" alt="ảnh này không tồn tại trong web đồng hồ...">
                                            <div class="card-body">
                                                <div class="theproduct__title">
                                                    <h5><?php echo $row["brand"] . " " . $row["sizeHeadder"] . "mm " . $row["gender"] . " " . $row["SKU_UPC_MPN"] ?></h5>
                                                </div>
                                                <div class="theproduct__price card-text"><?php echo number_format(($row["price"] - ($row["price"] * ($row["discount"] / 100))), 3, '.', '.') ?>₫</div>
                                                <div class="theproduct__sale card-text">
                                                    <span><?php echo number_format($row["price"], 3, '.', '.') ?>₫</span>
                                                    <div class="theProduct__persentSale">-<span class="theProduct__persent"><?php echo $row["discount"] ?></span>%</div>
                                                </div>
                                                <div class="theproduct__star">
                                                    <i class="bi bi-star-fill"></i>
                                                    <i class="bi bi-star-fill"></i>
                                                    <i class="bi bi-star-fill"></i>
                                                    <i class="bi bi-star-fill"></i>
                                                    <i class="bi bi-star-fill"></i>
                                                    <?php
                                                    if ($row["length"] <= 0) { ?>
                                                        <span class="theProduct__lenght text-danger">Hết hàng</span>
                                                    <?php
                                                    } else {
                                                    ?>
                                                        <span class="theProduct__lenght"><?php echo $row["length"] ?></span>
                                                    <?php
                                                    }
                                                    ?>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php
                            }
                            ?> <!-- xong card product  -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout__option layout__banChayNhat">
                <div class="layout__option__title">
                    <h4>BÁN CHẠY NHẤT HỆ THỐNG</h4>
                </div>
                <div class="swiper swiperss ">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-wrapper">
                        <?php
                        $select = "SELECT * FROM `products` WHERE `price` <= 100000 AND `price` >= 10000;";
                        $queyrySelect = mysqli_query($conn, $select);
                        while ($row = mysqli_fetch_array($queyrySelect)) {
                        ?>
                            <div class="theproduct swiper-slide" style="text-align: left;">
                                <a href="trangchitiet/trangchitiet.php?id=<?php echo $row['product_id']; ?>">
                                    <div class="card overflow-hidden theproduct__card" style="transition: color 0.1s linear;">
                                        <img src="<?php echo $row["image_url"] ?>" class="card-img-top" alt="ảnh này không tồn tại trong web đồng hồ...">
                                        <div class="card-body">
                                            <div class="theproduct__title">
                                                <h5><?php echo $row["brand"] . " " . $row["sizeHeadder"] . "mm " . $row["gender"] . " " . $row["SKU_UPC_MPN"] ?></h5>
                                            </div>
                                            <div class="theproduct__price card-text"><?php echo number_format(($row["price"] - ($row["price"] * ($row["discount"] / 100))), 3, ',', ',') ?>₫</div>
                                            <div class="theproduct__sale card-text">
                                                <span><?php echo number_format($row["price"], 3, ',', ',') ?>₫</span>
                                                <div class="theProduct__persentSale">-<span class="theProduct__persent"><?php echo $row["discount"] ?></span>%</div>
                                            </div>
                                            <div class="theproduct__star">
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <?php
                                                if ($row["length"] <= 0) { ?>
                                                    <span class="theProduct__lenght text-danger">Hết hàng</span>
                                                <?php
                                                } else {
                                                ?>
                                                    <span class="theProduct__lenght"><?php echo $row["length"] ?></span>
                                                <?php
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <?php
                        }
                        ?> <!-- xong card product  -->
                    </div>
                </div>
            </div>
            <!-- xong phần bán chạy nhất hệ thống  -->
            <div class="layout__option layout__Luxury">
                <div class="layout__option__title">
                    <h4>BỘ SƯU TẬP HÀNG LUXURY</h4>
                </div>
                <div class="swiper swiperss ">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-wrapper">
                        <?php
                        $select = "SELECT * FROM `products` WHERE `price` >= 60000";
                        $queyrySelect = mysqli_query($conn, $select);
                        while ($row = mysqli_fetch_array($queyrySelect)) {
                        ?>
                            <div class="theproduct swiper-slide" style="text-align: left;">
                                <a href="trangchitiet/trangchitiet.php?id=<?php echo $row['product_id']; ?>">
                                    <div class="card overflow-hidden theproduct__card" style="transition: color 0.1s linear;">
                                        <img src="<?php echo $row["image_url"] ?>" class="card-img-top" alt="ảnh này không tồn tại trong web đồng hồ...">
                                        <div class="card-body">
                                            <div class="theproduct__title">
                                                <h5><?php echo $row["brand"] . " " . $row["sizeHeadder"] . "mm " . $row["gender"] . " " . $row["SKU_UPC_MPN"] ?></h5>
                                            </div>
                                            <div class="theproduct__price card-text"><?php echo number_format(($row["price"] - ($row["price"] * ($row["discount"] / 100))), 3, '.', '.') ?>₫</div>
                                            <div class="theproduct__sale card-text">
                                                <span><?php echo number_format($row["price"], 3, ',', ',') ?>₫</span>
                                                <div class="theProduct__persentSale">-<span class="theProduct__persent"><?php echo $row["discount"] ?></span>%</div>
                                            </div>
                                            <div class="theproduct__star">
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <?php
                                                if ($row["length"] <= 0) { ?>
                                                    <span class="theProduct__lenght text-danger">Hết hàng</span>
                                                <?php
                                                } else {
                                                ?>
                                                    <span class="theProduct__lenght"><?php echo $row["length"] ?></span>
                                                <?php
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <?php
                        }
                        ?> <!-- xong card product  -->
                    </div>
                </div>
            </div>
            <!-- xong phần bán chạy nhất hệ thống  -->
            <div class="layout__option layout__giamGia50">
                <div class="layout__option__title">
                    <h4>SẢN PHẨM ĐỒNG HỒ GIÁ RẺ</h4>
                </div>
                <div class="swiper swiperss ">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-wrapper">
                        <?php
                        $select = "SELECT * FROM `products` WHERE `price` <= 10000";
                        $queyrySelect = mysqli_query($conn, $select);
                        while ($row = mysqli_fetch_array($queyrySelect)) {
                        ?>
                            <div class="theproduct swiper-slide" style="text-align: left;">
                                <a href="trangchitiet/trangchitiet.php?id=<?php echo $row['product_id']; ?>">
                                    <div class="card overflow-hidden theproduct__card" style="transition: color 0.1s linear;">
                                        <img src="<?php echo $row["image_url"] ?>" class="card-img-top" alt="ảnh này không tồn tại trong web đồng hồ...">
                                        <div class="card-body">
                                            <div class="theproduct__title">
                                                <h5><?php echo $row["brand"] . " " . $row["sizeHeadder"] . "mm " . $row["gender"] . " " . $row["SKU_UPC_MPN"] ?></h5>
                                            </div>
                                            <div class="theproduct__price card-text"><?php echo number_format(($row["price"] - ($row["price"] * ($row["discount"] / 100))), 3, '.', '.') ?>₫</div>
                                            <div class="theproduct__sale card-text">
                                                <span><?php echo number_format($row["price"], 3, '.', '.') ?>₫</span>
                                                <div class="theProduct__persentSale">-<span class="theProduct__persent"><?php echo $row["discount"] ?></span>%</div>
                                            </div>
                                            <div class="theproduct__star">
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <?php
                                                if ($row["length"] <= 0) { ?>
                                                    <span class="theProduct__lenght text-danger">Hết hàng</span>
                                                <?php
                                                } else {
                                                ?>
                                                    <span class="theProduct__lenght"><?php echo $row["length"] ?></span>
                                                <?php
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <?php
                        }
                        ?> <!-- xong card product  -->
                    </div>
                </div>
            </div>
            <!-- xong phần giảm giá 50%  -->
        </div>
    </div>
    <!-- thoát ra ngoài thezbody  -->
    <div class="layout__donghoChinhHang--black d-flex flex-row justify-content-start">
        <div class="layout__donghochinhhang__title layout__option flex-grow-1">
            <div class="heading--layout__logo"><a href="" style="color: #1abc9c !important;">VietTung.Swatch</a></div>
            <h3>Thế giới đồng hồ chính hãng</h3>
            <p>
                Được thành lập vào năm 2024, được <a target="_blank" style="color: var(--yellowBold) !important;" href="https://www.facebook.com/profile.php?id=100034266409285">Đức Việt, Lê Tùng</a> hoạt động và phát triển, VietTung.Swatch trở thành đại lý ủy quyền cho rất nhiều thương hiệu đến từ Việt Nam và Nước Ngoài chuyên bán đồng hồ chính hãng
            </p>
            <br>
            <p>Chính sách bảo hành cùng với các chương trình giảm giá tốt sẽ giúp bạn mua sắm dễ dàng. Với đội ngũ nhân viên tận tình, am hiểu về đồng hồ, VietTung.Swatch rất vui được phục vụ quý khách</p>
        </div>
    </div>
    <br>
    <!-- xong phần quảng cáo nền đen  -->
    <div class="Thefooter">
        <div class="Thefooter__layout">
            <div class="Thefooter__lienHe">
                <h4>Liên hệ</h4>
                <p>Địa chỉ: <a href="">50 Mễ Sơn - Nguyễn Trãi - Thường Tín</a></p>
                <p>Điện thoại: <a href="">0357049001</a></p>
                <p>Email: <a href="">ducvietz555@gmail.com</a></p>
            </div>
            <div class="Thefooter__chinhSach">
                <h4>Chính sách</h4>
                <p><a href="">Chính sách đổi trả</a></p>
                <p><a href="">Chính sách bảo mật</a></p>
                <p><a href="">Chính sách vận chuyển</a></p>
                <p><a href="">Quy định sử dụng</a></p>
            </div>
            <div class="Thefooter__lienKet">
                <h4>Liên kết</h4>
                <p>Hãy liên kết với chúng tôi</p>
                <div class="Thefooter__lienKet--icon d-flex flex-row ">
                   <a href="https://www.facebook.com/rolex" target="_blank"><i class="bi bi-facebook fs-3"></i></a>
                   <a href="https://www.youtube.com/rolex" target="_blank"><i class="bi bi-youtube fs-3"></i></a>
                   <a href="https://x.com/ROLEX" target="_blank"><i class="bi bi-twitter fs-3"></i></a>
                   <a href="https://www.google.com" target="_blank"><i class="bi bi-google fs-3"></i></a>
                   <a href="https://www.instagram.com/rolex/" target="_blank"><i class="bi bi-instagram fs-3"></i></a>

                </div>
            </div>
        </div>
        <!-- Form liên hệ với quản trị viên -->
<div class="contact-form">
    <h4>Liên hệ với quản trị viên</h4>
    <form method="POST" action="cont.php">
        <label for="name">Tên của bạn:</label>
        <input type="text" id="name" name="name" required placeholder="Nhập tên của bạn">

        <label for="email">Email của bạn:</label>
        <input type="email" id="email" name="email" required placeholder="Nhập email của bạn">

        <label for="message">Nội dung:</label>
        <textarea id="message" name="message" rows="5" required placeholder="Nhập nội dung liên hệ"></textarea>

        <button type="submit">Gửi liên hệ</button>
    </form>
</div>


        <div class="hr"></div>
        <center>Huỳnh Đức Hà Việt - 0357049001 - ducvietz555@gmail.com</center>
        <?php
        $conn = null;
        ?>
    </div>
    <!-- xong chân trang -->
    <script defer src="thư viện/bootstrap/js/bootstrap.js"></script>
    <script src="thư viện/swiper/cdn.jsdelivr.net_npm_swiper@10.3.1_swiper-bundle.min.js"></script>
    <script src="trangChu/trangchu.js"></script>
</body>

</html>