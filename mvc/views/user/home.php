<header>

    <div id="demo" class="carousel slide" data-bs-ride="carousel">

        <!-- Indicators/dots -->
        <div class="carousel-indicators">
            <?php foreach ($post->get_val('banners') as $key => $val) : extract($val); ?>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="<?= $key ?>" class="<?= $active = $key == 0 ? 'active' : '' ?>"></button>
            <?php endforeach; ?>
        </div>

        <!-- The slideshow/carousel -->

        <div class="carousel-inner">
            <?php foreach ($post->get_val('banners') as $key => $val) : extract($val); ?>

                <div class="carousel-item <?= $active = $key == 0 ? 'active' : '' ?>">
                    <a href="<?= GET ?>?id_chitiet=<?= $id_product ?>">
                        <img src="<?= IMAGE ?><?= $image_banner ?>" alt="Los Angeles" class="d-block image_banner" style="width:100%">
                    </a>
                    <div class="carousel-caption text-white">
                        <h3><?= $title_banner ?></h3>
                        <p>We had such a great time in LA!</p>
                    </div>
                </div>

            <?php endforeach; ?>
        </div>

        <!-- Left and right controls/icons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

</header>
<!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
<div class="container">
    <div class="tieude-main p-3 mt-3 container">
        <a href="">
            <span class="text-white"><i class="fab fa-shopify"></i> Sản phẩm đặc biệt</span>
        </a>
    </div>
    <div class="mt-3">
        <div class="swiper mySwiper2">
            <div class="swiper-wrapper">
                <?php foreach ($post->select_product() as $val) : extract($val);
                    if ($special_pro < 1) { ?>
                        <div class="swiper-slide">

                            <div class=" p-3 card">
                                <div class="card__tt">
                                    <div class="card__tt-image">
                                        <img src="<?= IMAGE ?><?= $image_pro ?>" alt="">
                                        <div class="sp__hover d-flex  justify-content-around align-items-center container">
                                            <div class="sp__hover--button">
                                                <strong><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>">Chi tiết</a></strong>
                                            </div>
                                            <div class="icon">
                                                <ul class="d-flex">
                                                    <li><a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>"><i class="far fa-heart"></i></a></li>
                                                    <li><a href=""><i class="far fa-share-square"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="stdio">
                                        <span>PHUC DESIGN</span>
                                    </div> -->
                                    <div class="ten_sp">
                                        <strong><?= $title_pro ?></strong>
                                    </div>
                                    <div class="ten_sp">
                                        <span class="text-dark">Số lượng sản phẩm: </span><?= $quantity_pro ?>
                                    </div>
                                    <div class="gia_sp d-flex">
                                        <div class="tt_gia_tien">
                                            <i class="fas fa-tags"></i>
                                        </div>
                                        <div class="gia_goc">
                                            <del><span><?= $price_pro ?></span></del>
                                        </div>
                                        <div class="gach_sp mx-2"></div>
                                        <div class="gia_duocgiam">
                                            <span><?php echo number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)); ?></span>
                                        </div>
                                        <div class="gach"></div>
                                        <div class="sale_sp">
                                            <span>
                                                <?= $sale_pro ?>%
                                            </span>
                                        </div>
                                    </div>
                                    <div class="new">
                                        <span>
                                            new
                                        </span>
                                    </div>

                                </div>
                            </div>

                        </div>
                <?php }
                endforeach; ?>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
</div>

<center>
    <div class="view__all mt-5">
        <a href="<?= CONTROLLERS_USER ?>?action=danhmuc">
            <span>
                VIEW ALL
            </span>
        </a>
    </div>
</center>
<div class="tieude-main p-3 mt-5 container">
    <a href="">
        <span class="text-white"><i class="fab fa-shopify"></i> Sản phẩm mới nhất </span>
    </a>
</div>
<main class="main__one container-xl">
    <div class="sp__main">
        <div class="row container">
            <?php foreach ($post->select_product() as $val) : extract($val) ?>
                <div class="col-xl-3 col-md-6 col-6 p-3 card">
                    <div class="card__tt">
                        <div class="card__tt-image">
                            <img src="<?= IMAGE ?><?= $image_pro ?>" alt="">
                            <div class="sp__hover d-flex  justify-content-around align-items-center container">
                                <div class="sp__hover--button">
                                    <strong><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>">Chi tiết</a></strong>
                                </div>
                                <div class="icon">
                                    <ul class="d-flex">
                                        <li><a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>"><i class="far fa-heart"></i></a></li>
                                        <li><a href=""><i class="far fa-share-square"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="stdio">
                            <span>PHUC DESIGN</span>
                        </div> -->
                        <div class="ten_sp">
                            <strong><?= $title_pro ?></strong>
                        </div>
                        <div class="ten_sp">
                            <span class="text-dark">Số lượng sản phẩm: </span><?= $quantity_pro ?>
                        </div>
                        <div class="gia_sp d-flex">
                            <div class="tt_gia_tien">
                                <i class="fas fa-tags"></i>
                            </div>
                            <div class="gia_goc">
                                <del><span><?= $price_pro ?></span></del>
                            </div>
                            <div class="gach_sp mx-2"></div>
                            <div class="gia_duocgiam">
                                <span><?php echo number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)); ?></span>
                            </div>
                            <div class="gach"></div>
                            <div class="sale_sp">
                                <span>
                                    <?= $sale_pro ?>%
                                </span>
                            </div>
                        </div>
                        <div class="new">
                            <span>
                                new
                            </span>
                        </div>

                    </div>
                </div>
            <?php endforeach; ?>

        </div>
    </div>
    <center>
        <div class="view__all mt-5">
            <a href="<?= CONTROLLERS_USER ?>?action=danhmuc">
                <span>
                    VIEW ALL
                </span>
            </a>
        </div>
    </center>
</main>

<div class="tieude-main p-3 mt-5 container">
    <a href="">
        <span class="text-white"><i class="fab fa-shopify"></i> Tin tức mới nhất</span>
    </a>
</div>
<!-- <div class="main__two mt-3 container-xl">
    <div class="row mt-3 container"> -->
        <!-- Swiper -->
        <!-- <div class="swiper mySwiper">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <div class="d-flex p-5 row danhmuc__sp w-100">
                        <img src="<?= IMAGE ?>tshirt_PNG5452.png" alt="" class="col-xl-6 h-60">
                        <div class="danhmuc__sanpham--sl col-xl-6">
                            <span>
                                <p>Tên danh mục</p>
                                <p> Số lượng</p>
                            </span>
                            <form action="" method="post">
                                <input type="submit" value="Button">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="d-flex p-5 row danhmuc__sp w-100">
                        <img src="<?= IMAGE ?>tshirt_PNG5452.png" alt="" class="col-xl-6 h-60">
                        <div class="danhmuc__sanpham--sl col-xl-6">
                            <span>
                                <p>Tên danh mục</p>
                                <p> Số lượng</p>
                            </span>
                            <form action="" method="post">
                                <input type="submit" value="Button">
                            </form>
                        </div>

                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="d-flex p-5 row danhmuc__sp w-100">
                        <img src="<?= IMAGE ?>tshirt_PNG5452.png" alt="" class="col-xl-6 h-60">
                        <div class="danhmuc__sanpham--sl col-xl-6">
                            <span>
                                <p>Tên danh mục</p>
                                <p> Số lượng</p>
                            </span>
                            <form action="" method="post">
                                <input type="submit" value="Button">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div> -->
    <!-- </div>
</div> -->

<div class="container tieude-main p-3 mt-5">
    <a href="">
        <span class="text-white"><i class="far fa-address-card"></i> Tin tức</span>
    </a>
</div>
<section class="p-3 container" style="box-shadow: 0px 0px 10px rgba(134, 133, 133, 0.37); border-radius: 0px 0px 40px 40px;">
    <?php if (!empty($post->get_val('news'))) {
        foreach ($post->get_val('news') as $val) : extract($val); ?>

            <div class="row mt-3">
                <div class="col-xl-5">
                    <a href="<?= CONTROLLERS_USER ?>?action=chitiet_new&id_new=<?= $id_news ?>">
                        <img src="<?= IMAGE ?><?= $image ?>" alt="">
                    </a>
                </div>
                <div class="col-xl-7">
                    <h4><?= $title ?></h4>
                    <a href=""><?=substr($content, 0, 100); ?></a>
                    <div class="font_new">
                        <!-- <img src="./img/author.png" alt=""> -->
                        <a href=""><?= $author ?></a>
                        <i class="fas fa-clock"></i>
                        <a href="">28/10/2024</a>
                    </div>

                </div>
            </div>

            <hr>
    <?php endforeach;
    } ?>
</section>



</div>