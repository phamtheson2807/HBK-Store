<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <title>HBK</title>
    <link rel="icon" type="image/x-icon" href="../public/img/rectangle_2_4kv_icon.ico">
    <script src="https://kit.fontawesome.com/e123c1a84c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <link rel="stylesheet" href="../public/css/web.css">

    <script src="../public/js/anhchitiet.js">
    </script>
</head>

<body>
    <?php if (!empty($post->get_val('info'))) {
        foreach ($post->get_val('info') as $logo) : extract($logo); ?>
            <div class="top_nav_tt ">
                <div class="call__us login__us d-flex">
                    <span>
                        <i class="fas fa-phone"></i> <?= $phone_info ?>
                    </span>
                    <div class='gach mx-3'></div>
                    <?php
                    if (isset($id)) {
                        echo "<div class='mx-2 dropdown'>
                        <a href='' class='them_thongbao' data-bs-toggle='dropdown'><span class='ti-comment'></span></a>";
                    ?>
                        <ul class="dropdown-menu dropdown-300px">
                            <li>
                                <a class="dropdown-item d-flex" href="#"><img src="<?= IMAGE ?>1.jpg" alt="">
                                    <div class="mx-2 media-nav">
                                        <div>
                                            <div class="">Nguoi gui</div>
                                            <div class="">tieu de: hdaskda</div>
                                            <div class="">asdasdasdasdasdasdqweqweqweqweqwe werwerwerwerwer</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li><a class="dropdown-item d-flex" href="#"><img src="<?= IMAGE ?>1.jpg" alt="">
                                    <div class="mx-2 media-nav">
                                        <div>
                                            <div class="">Nguoi gui</div>
                                            <div class="">tieu de: hdaskda</div>
                                            <div class="">asdasdasdasdasdasdqweqweqweqweqwe werwerwerwerwer</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <?php
                        echo "</div>";
                        echo "<div class='mx-2 dropdown'>
                        <a href='' class='them_thongbao' data-bs-toggle='dropdown'><span class='ti-bell'></span></a>";

                        ?>
                        <ul class="dropdown-menu dropdown-300px">
                            <li><a class="dropdown-item d-flex" href="#"><img src="<?= IMAGE ?>1.jpg" alt="">
                                    <div class="mx-2 media-nav">
                                        <div>
                                            <div class="">Nguoi gui</div>
                                            <div class="">tieu de: hdaskda</div>
                                            <div class="">asdasdasdasdasdasdqweqweqweqweqwe werwerwerwerwer</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li><a class="dropdown-item d-flex" href="#"><img src="<?= IMAGE ?>1.jpg" alt="">
                                    <div class="mx-2 media-nav">
                                        <div>
                                            <div class="">Nguoi gui</div>
                                            <div class="">tieu de: hdaskda</div>
                                            <div class="">asdasdasdasdasdasdqweqweqweqweqwe werwerwerwerwer</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    <?php
                        echo "</div>";
                        echo "<div class='gach mx-3'></div>";
                    }
                    ?>

                </div>
                <div class="login__us d-flex">
                    <div class="dropdown">
                        <?php
                        if (!isset($id)) {
                            echo "<div class=''><span><i class='far fa-user'></i> Chưa có tài khoản</span></div>";
                        } ?>

                        <?php

                        if (isset($id)) {

                            // var_dump($post->get_val_id('users', $id));
                            foreach ($post->get_val_id('users', 'id_user', $id) as $val) : extract($val);
                                echo "<div class='dropdown-toggle' data-bs-toggle='dropdown'>
                    <img src='../public/img/$avatar' alt='' style='width: 30px; border-radius: 50%;'>
                    <span>$name</span></div>";
                            endforeach;
                        }
                        ?>
                        <ul class="dropdown-menu">
                            <?php
                            if (isset($_COOKIE['id_admin'])) {
                                echo "<li><a class='dropdown-item text-dark' href='../controllers/admin.php'>Admin</a></li>";
                            }
                            ?>
                            <li><a class="dropdown-item text-dark" href="<?= CONTROLLERS_USER ?>?action=thongtin">Thông tin tài khoản</a></li>
                            <li><a class="dropdown-item text-dark" href="../controllers/get.php?action=dangxuat">Đăng xuất</a></li>
                        </ul>
                    </div>

                    <?php

                    if (!isset($id)) {
                        echo "<div class='gach mx-3'></div>
                <a href='../controllers/get.php?action=dangxuat'>Đăng nhập</a>";
                    } ?>
                </div>
            </div>
            <nav class="navbar navbar-expand-lg bg-white navbar-white sticky-top">
                <div class="container-fluid ">
                    <a class="navbar-brand" href="#">
                        <div class="nav__logo">
                            <img src="<?= IMAGE ?><?= $logo ?>" alt="" height="100px">
                        </div>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="<?= CONTROLLERS_USER ?>">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= CONTROLLERS_USER ?>?action=danhmuc">Danh mục sản phẩm</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= CONTROLLERS_USER ?>?action=contact">Liên hệ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= CONTROLLERS_USER ?>?action=lichsu">Lịch sử mua hàng</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= CONTROLLERS_USER ?>?action=tintuc">Tin tức</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= CONTROLLERS_USER ?>?action=gioithieu">Thông tin cửa hàng</a>
                            </li>
                        </ul>
                        <div class="nav__right d-flex justify-content-around ">
                            <span style="font-size:30px;cursor:pointer" onclick="openNav()"><i class="ti-search"></i></span>
                            <div class="love">
                                <div class="sl"><?= $tym ?></div>
                                <a href="<?= CONTROLLERS_USER ?>?action=like">
                                    <span>
                                        <i class="fas fa-heart"></i>
                                    </span>
                                </a>
                            </div>
                            <div class="shop__cart">
                                <div class="sl">
                                    <?= $gh_nav ?>
                                </div>
                                <a href="<?= CONTROLLERS_USER ?>?action=card">
                                    <span>
                                        <i class="fab fa-shopify"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <div id="myNav" class="overlay ">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <center>
                    <span class="text-white fs-5">Tìm kiếm sản phẩm</span>
                    <div class="overlay-content">
                        <form class="d-flex align-items-center" action="<?= CONTROLLERS_USER ?>?action=danhmuc" method="post">
                            <input class="form-control me-2" type="text" name="search" placeholder="Search">
                            <button class="btn Search_timkiem" name="timkiem" type="submit">Search</button>
                        </form>
                    </div>
                </center>

            </div>

    <?php endforeach;
    } ?>