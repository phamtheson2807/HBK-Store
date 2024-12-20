<main class="container">
    <h2 class="dash-title">Sửa danh mục</h2>
    <form action="" class="mt-3" method="post" enctype="multipart/form-data">
        <?php foreach ($post->get_val_id('cates', 'id_cate', $_GET['id']) as $val) : extract($val) ?>
            <div class="card my-3">
                <input class="form-control" type="text" name="name" placeholder="Nhập tên danh mục" value="<?= $name_cate ?>">
            </div>

            <div class=" card my-3 ">
                <select name="parent" id="">
                    <option value="<?= $id_cate ?>" selected><?= $name_cate ?></option>
                    <option value="0">Không chọn menu cha</option>
                    <?php if (!empty($post->get_val('cates'))) { ?>
                        <?php foreach ($post->get_val('cates') as $val) : ?>
                            <option value="<?= $id_cate ?>"><?= $val['name_cate'] ?></option>
                        <?php endforeach; ?>
                    <?php } ?>
                </select>
            </div>
        <?php endforeach; ?>

        <input type="submit" name="sua_dm" value="Sửa danh mục" class="dang_nhap_dk btn btn-danger">

    </form>
</main>