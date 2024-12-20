<main>
    <h2>Sửa tin tức</h2>
    <form method="post" action="" enctype="multipart/form-data">
        <?php foreach ($post->get_val_id('news','id_news',$_GET['id_new']) as $val) : extract($val); ?>
            <div class="form-group">
                <label for="email">Tiêu đề</label>
                <input type="text" class="form-control" value="<?= $title ?>" name="title">
            </div>
            <div class="form-group">
                <label for="pwd">Nội dung:</label>
                <textarea class="form-control" name="content" rows="5" id="editor"><?= $content ?></textarea>
            </div>
            <div class="form-group">
                <label for="pwd">Image:</label>
                <input type="file" class="form-control" name="image">
                <img src="<?=IMAGE?><?= $image ?>" height="100px" width="100px" alt="">
            </div>
            <div class="form-group">
                <label for="pwd">Người viết:</label>
                <input type="text" class="form-control" id="pwd" value="<?= $author ?>" placeholder="Enter sale" name="nguoi_viet">
            </div>
        <?php endforeach; ?>
        <input type="submit" name="sua_new" value="Sửa" class="btn btn-primary mt-3">
    </form>
</main>