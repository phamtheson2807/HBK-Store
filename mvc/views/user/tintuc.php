<main class="container mt-4 mt-3 news">
    <div class="row">
        <div class="col-xl-8 col-md-7 col-sm-12 col-12">
            <div class="container tieude-main p-3">
                <a href="">
                    <span class="text-white"><i class="far fa-address-card"></i> Tin tức</span>
                </a>
            </div>
            <section class="p-3" style="box-shadow: 0px 0px 10px rgba(134, 133, 133, 0.37); border-radius: 0px 0px 40px 40px;">
                <?php if (!empty($post->get_val('news'))) {
                    foreach ($post->get_val('news') as $val) : extract($val); ?>

                        <div class="row mt-3">
                            <div class=" col-xl-5">
                                <a href="<?= CONTROLLERS_USER ?>?action=chitiet_new&id_new=<?= $id_news ?>">
                                    <img src="<?= IMAGE ?><?= $image ?>" alt="">
                                </a>
                            </div>
                            <div class=" col-xl-7">
                                <h4><?= $title ?></h4>
                                <a href="">Những sản phẩm đồ chơi tốt sẽ là người bạn đồng hành giúp bé phát triển sự thông minh và các ký năng cần thiết...</a>
                                <div class="font_new">
                                    <!-- <img src="./img/author.png" alt=""> -->
                                    <a href=""><?= $author ?></a>
                                    <i class="fas fa-clock"></i>
                                    <!-- <a href=""><?="".date("d/m/Y").""?></a> -->
                                    <a href="">28/10/2024</a>
                                </div>
                            </div>
                        </div>

                        <hr>
                <?php endforeach;
                } ?>
            </section>
        </div>

        <div class="col-xl-4 col-md-5 col-sm-12 col-12">
            <div class="container tieude-main p-3">
                <a href="">
                    <span class="text-white"><i class="far fa-address-card"></i> Tin tức mới nhất</span>
                </a>
            </div>
            <section class="p-3" style="box-shadow: 0px 0px 10px rgba(134, 133, 133, 0.37); border-radius: 0px 0px 40px 40px;">
                <?php if (!empty($post->get_val('news'))) {
                    foreach ($post->get_val('news') as $val) : extract($val); ?>
                        <a href="<?= CONTROLLERS_USER ?>?action=chitiet_new&id_new=<?= $id_news ?>">
                            <div class="row">
                                <div class="col-xl-6">
                                    <img src="<?= IMAGE ?><?= $image ?>" alt="">
                                    <div class="font_new">
                                        <img src="./img/author.png" alt="">
                                        <a href=""><?= $author ?></a>
                                        <br>
                                        <i class="fas fa-clock"></i>
                                        <!-- <a href=""><?="".date("d/m/Y").""?></a> -->
                                        <a href="">28/10/2024</a>
                                    </div>
                                </div>
                                <div class="new_font col-xl-6">
                                    <h4><?= $title ?></h4>
                                    <a href="">Những sản phẩm đồ chơi tốt sẽ là người bạn đồng hành giúp bé phát triển sự thông minh và các ký năng cần thiết...</a>
                                </div>
                            </div>
                        </a>
                        <hr>
                <?php endforeach;
                } ?>
            </section>
        </div>
    </div>

</main>