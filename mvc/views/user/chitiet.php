<!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<?php foreach ($post->get_val_id('products', 'id_pro', $_GET['id_chitiet']) as $val) : extract($val); ?>
    <main class="container mt-5">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="../html/home.html">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="../html/chitiet.html">Chi tiết sản phẩm</a></li>
        </ul>
        <div class="container tieude-main py-1">
            <a href="">
                <span class="text-white"><i class="far fa-comment"></i> Chi tiết sản phẩm</span>
            </a>
        </div>
        <section class="p-5" style="box-shadow: 0px 0px 10px rgba(134, 133, 133, 0.37); border-radius: 0px 0px 40px 40px;">
            <div class="row">
                <div class="col-md-6 mb-4 mb-md-0">
                    <div id="mdb-lightbox-ui">

                    </div>

                    <div class="mdb-lightbox">

                        <div class="row product-gallery">

                            <div class="img col-12 mb-0 img-magnifier-container">
                                <img src="<?= IMAGE ?><?= $image_pro ?>" id="myimage" class="img-fluid z-depth-1">
                            </div>

                            <div class="col-12 mt-3">
                                <div class="row">
                                    <?php if (!empty($post->get_val_id('albums', 'id_product', $_GET['id_chitiet']))) {
                                        foreach ($post->get_val_id('albums', 'id_product', $_GET['id_chitiet']) as $val) : extract($val) ?>
                                            <div class=" col-3 border d-flex">
                                                <img src="<?= IMAGE ?><?= $image_album ?>" width="100px" height="100px">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                    <?php endforeach;
                                    } ?>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <p class="fs-5">
                        <i class="fab fa-shopify"></i> <strong> Sản phẩm: <?= $title_pro ?></strong>
                    </p>
                    <p><span class="mr-1"><i class="fas fa-tags"></i> giá gốc:
                            <?= number_format($price_pro) ?>
                        </span></p>
                    <h5 class="card-title d-flex">
                        <span class=""><i class="fas fa-percent"></i> Sale: </span>
                        <div class="sale_sp mx-2">
                            <span>
                                <?= $sale_pro ?>%
                            </span>
                        </div>

                    </h5>
                    <!-- <h5 class="card-title text-dark"><i class="fas fa-eye"></i> View:
                        <?= $view_pro ?>
                    </h5> -->
                    <hr>
                    <div class="table-responsive mb-2">
                        <table class="table table-sm table-borderless">
                            <form action="" method="post">
                                <input type="text" name="id_chitiet" value="<?= $id_pro ?>" hidden>
                                <tbody>
                                    <tr>
                                        <td class="pl-0 pb-0 w-25">Số lượng sản phẩm <?= $quantity_pro ?></td>
                                    </tr>
                                    <tr>
                                        <td class="pl-0">
                                            <div class="def-number-input number-input safari_only mb-0">
                                                <div class="handle-counter d-flex">
                                                    <button type="button" id="subtract" id="subtract" class="btn btn-primary">-</button>
                                                    <input type="number" name="quantity" class="mx-2" id="input" min="1" max="<?= $quantity_pro ?>" value="1">
                                                    <button type="button" id="add" class="btn btn-primary">+</button>
                                                </div>
                                                <button type="submit" name="add_to_cart" class="btn m-md-3 mb-2 add_to_card text-white">ADD to CART</button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </form>
                        </table>
                    </div>

                    <a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>">
                        <button type="button" class="btn btn-outline-dark btn-md mb-2"><i class="far fa-heart"></i>
                            Yêu thích</button>
                    </a>
                    <!-- <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Mua ngay</button> -->
                    <div class="share d-flex align-items-center mb-2 ">
                        <span class="btn btn-primary">
                            SHARE
                        </span>
                        <div class="col-md-5 col-lg-4 ml-lg-0 text-center text-md-end d-flex">

                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-facebook-f"></i></a>


                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-twitter"></i></a>


                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-google"></i></a>


                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-instagram"></i></a>
                        </div>

                    </div>

                    <div class="share mb-2 mt-3">
                        <span class="border-bottom fs-4 text-danger">
                            <i class="ti-link"></i> Thông tin sản phẩm
                        </span>
                        <div class="tt_sp_chitiet d-flex flex-column mt-3">
                            <?php foreach (explode(',', $thongtin) as $val) { ?>
                                <p><strong><i class="ti-minus"></i><span> <?= $val ?></span></strong></p>
                            <?php }
                            ?>
                        </div>

                    </div>

                    <div class="mt-3 mb-5">
                        <span class="border-bottom fs-4 text-danger">
                            Nội dung sản phẩm
                        </span>
                        <div class="tt_sp_chitiet d-flex flex-column mt-3">
                            <span>
                                <?= $content_pro ?>
                            </span>
                        </div>
                    </div>



                </div>

            </div>
        </section>









        <div class="container mt-3">

            <div class="container mt-3">
                <div class="form-group">
                    <div class="container tieude-main py-1">
                        <a href="">
                            <span class="text-white"><i class="far fa-comment"></i> Bình luận</span>
                        </a>
                    </div>
                    <form action="" method="post">
                        <textarea class="form-control" rows="5" name="comment" id="comment" placeholder="viết bình luận..." <?php echo $luu = isset($id) ? "" : "disabled"; ?>><?php if (!isset($id)) {
                                                                                                                                                                                    echo "Bạn cần đăng nhập để bình luận";
                                                                                                                                                                                } ?></textarea>
                        <input type="submit" name="submit_bl_main" class="btn btn-danger mt-3" value="gửi">
                    </form>
                </div>
            </div>
            <span class="text-danger">

            </span>


            <div class="main_comment container mt-3">
                <div class="container tieude-main py-1">
                    <a href="">
                        <span class="text-white"><i class="far fa-comment"></i> Tất cả bình luận của người dùng</span>
                    </a>
                </div>


                <div class="media border p-3">
                    <?php
                    // var_dump($post->get_val_join('comments','users','comments.user_id','users.id_user'));
                    if (!empty($post->get_val_id_join('product_id', $_GET['id_chitiet'], 'comments', 'users', 'comments.user_id', 'users.id_user'))) {
                        foreach ($post->get_val_id_join('product_id', $_GET['id_chitiet'], 'comments', 'users', 'comments.user_id', 'users.id_user') as $val) : extract($val);
                            if ($parent_cm == 0) : ?>
                                <div class="commment_so d-flex align-items-center">
                                    <img src="<?= IMAGE ?><?= $avatar ?>" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                                    <h4 class="mx-3">
                                        <?= $name ?>
                                    </h4>
                                    <h3 class='text-danger'> <?php echo $role = $role > 0 ? "(admin)" : ""; ?> </h3>
                                    <span class="fs-6 mx-2 d-flex "><i class="far fa-calendar-alt text-success fs-5 mx-2"></i> <?= $date ?></span>
                                </div>
                                <div class="mt-3 card p-2 media-body">
                                    <p class="fs-4">Nội dung</p>
                                    <p>
                                        <?= htmlspecialchars($content_cm) ?>
                                    </p>
                                </div>

                                <div class="mt-3">
                                    <div class="d-flex">
                                        <a class="btn gui_bl" data-bs-toggle="collapse" href="#collapse<?= $id_cm ?>">
                                            trả lời
                                        </a>
                                        <div class="mx-2">
                                            <?php if (isset($id)) :
                                                if ($id == $id_user) {
                                                    echo "<a href=" . GET . "?action=xoa_cm_cha&id_cm=$id_cm&id_sp=" . $_GET['id_chitiet'] . " class='btn btn-danger'>xóa</a>";
                                                }
                                            endif; ?>
                                        </div>
                                    </div>
                                    <div id="collapse<?= $id_cm ?>" class="collapse" data-bs-parent="#accordion">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <form action="<?= GET ?>?id_cm=<?= $id_cm ?>&id_sp=<?= $_GET['id_chitiet'] ?>" method="post">
                                                    <input type="text" value="" name="id_sp" hidden>
                                                    <textarea class="form-control" rows="5" name="comment" id="comment" placeholder="viết bình luận..."></textarea>
                                                    <input type="submit" name="submit_bl_con" class="btn btn-danger mt-3" value="gửi">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- comment con  -->
                                <div class="container p-3" style="width: 95%;">
                                    <?php if (!empty($post->get_val_id_join('parent_cm', $id_cm, 'comments', 'users', 'comments.user_id', 'users.id_user'))) {
                                        foreach ($post->get_val_id_join('parent_cm', $id_cm, 'comments', 'users', 'comments.user_id', 'users.id_user') as $val) : extract($val);
                                    ?>
                                            <div class="commment_so d-flex align-items-center">
                                                <img src="<?= IMAGE ?><?= $avatar ?>" class="mr-3 mt-3 rounded-circle" style="width:40px; height:40px">
                                                <h5>
                                                    <?= $name ?>
                                                </h5>
                                                <h5 class='text-danger'> (admin) </h5>
                                                <span class="fs-6 mx-2 d-flex "><i class="far fa-calendar-alt text-success fs-5 mx-2"></i> <?= $date ?></span>
                                            </div>
                                            <div class="">
                                                <div class="media-body mt-3 card p-2">
                                                    <p class="fs-4">Nội dung</p>
                                                    <p>
                                                        <?= htmlspecialchars($content_cm) ?>
                                                    </p>
                                                </div>

                                                <?php if (isset($id)) :
                                                    if ($id == $id_user) {
                                                        echo "<a href=" . GET . "?action=xoa_cm&id_cm=$id_cm&id_sp=" . $_GET['id_chitiet'] . " class='btn btn-danger mt-3'>xóa</a>";
                                                    }
                                                endif; ?>
                                            </div>
                                    <?php endforeach;
                                    } ?>
                                </div>
                    <?php endif;
                        endforeach;
                    } else {
                        echo "<center><h1>Trống bình luận</h1></center>";
                    } ?>
                </div>


            </div>


            <div class="container tieude-main p-3 mt-3">
                <a href="">
                    <span class="text-white"><i class="fab fa-shopify"></i> Sản phẩm liên quan</span>
                </a>
            </div>
            <div class="mt-3">
                <div class="swiper mySwiper2">
                    <div class="swiper-wrapper">
                        <?php foreach ($post->new_product($_GET['id_chitiet']) as $val) : extract($val) ?>
                            <div class="swiper-slide">

                                <div class=" p-3 card">
                                    <div class="card__tt">
                                        <div class="card__tt-image">
                                            <img src="<?= IMAGE ?><?= $image_pro ?>" alt="">
                                            <div class="sp__hover d-flex  justify-content-around align-items-center container">
                                                <div class="sp__hover--button">
                                                    <strong><a href="<?= CONTROLLERS_USER ?>?action=chitiet&id_chitiet=<?= $id_pro ?>">Chi tiết</a></strong>
                                                </div>
                                                <div class="icon">
                                                    <ul class="d-flex">
                                                        <li><a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>"><i class="far fa-heart"></i></a></li>
                                                        <li><a href=""><i class="far fa-share-square"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="stdio">
                                            <span>BACH CHU DESIGN</span>
                                        </div>
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
                        <?php endforeach; ?>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>

    </main>
<?php endforeach; ?>