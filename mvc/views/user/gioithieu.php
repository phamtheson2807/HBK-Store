<?php if (!empty($post->get_val('info'))) {
    foreach ($post->get_val('info') as $logo) : extract($logo); ?>
        <div class="container tieude-main p-3 mt-3">
            <a href="">
                <span class="text-white"><i class="ti-wallet"></i> Lời giới thiệu</span>
            </a>
        </div>
        <div class="content_gioithieu container media px-5 py-1">
            <?= $thongtin ?>
        </div>
<?php endforeach;
} ?>