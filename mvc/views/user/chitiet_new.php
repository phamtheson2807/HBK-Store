<main class="container mt-3">
    <div class="container tieude-main p-3">
        <a href="">
            <span class="text-white"><i class="far fa-address-card"></i> Tin tức</span>
        </a>
    </div>
    <section class="p-3" style="box-shadow: 0px 0px 10px rgba(134, 133, 133, 0.37); border-radius: 0px 0px 40px 40px;">
        <?php if (!empty($post->get_val_id('news', 'id_news', $_GET['id_new']))) {
            foreach ($post->get_val_id('news', 'id_news', $_GET['id_new']) as $val) : extract($val); ?>

                <div class=" mt-3">
                    <div class=" ">
                        <a href="<?= CONTROLLERS_USER ?>?action=chitiet_new&id_new=<?= $id_news ?>">
                            <img src="<?= IMAGE ?><?= $image ?>" alt="">
                        </a>
                    </div>
                    <div class=" ">
                        <h4><?= $title ?></h4>
                        <div class="font_new">
                            <!-- <img src="./img/author.png" alt=""> -->
                            <a href=""><?= $author ?></a>
                            <i class="fas fa-clock"></i>
                            <a href=""><?= $date ?></a>
                        </div>
                        <a href=""><?= $content ?></a>

                    </div>
                </div>

                <hr>
        <?php endforeach;
        } ?>
    </section>
</main>