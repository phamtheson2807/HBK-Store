<main>
    <h2 class="dash-title">Sửa thuộc tính</h2>

    <form action="" class="mt-3" method="post" enctype="multipart/form-data">
            <?php foreach($post->get_val_id('attributes','id_attri',$_GET['atri_id']) as $val2): extract($val2);?>
            <div class="card my-3 d-flex flex-row">
                <input class="form-control" type="color" name="color" placeholder="Nhập màu" value="<?=$color?>">
                <input class="form-control" type="text" name="size" placeholder="Nhập size" value="<?=$size?>">
                <input class="form-control" type="number" name="number_atri" placeholder="Nhập số lượng" value="<?=$number_atri?>">
            </div>
            <?php endforeach;?>
            <input type="submit" name="sua_atri" value="Sửa sản phẩm" class="dang_nhap_dk btn btn-danger mt-3">
    </form>
</main>