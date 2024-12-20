<main>
    <h2 class="dash-title">Sửa</h2>

    <form action="" class="mt-3" method="post" enctype="multipart/form-data">
        <?php foreach ($post->get_val_id('products', 'id_pro', $_GET['id']) as $val) : extract($val) ?>
            <div class=" card my-3 ">
                <input class="form-control" type="text" name="title" placeholder="Nhập tiêu đề" value="<?= $title_pro ?>">
            </div>

            <textarea class="form-control" name="content" rows="5" id="editor" id="comment" placeholder="Nhập nội dung"><?= $content_pro ?></textarea>

            <div class=" card my-3 ">
                <input class="form-control" type="text" name="thongtin" placeholder="Nhập thông tin" value="<?= $thongtin ?>">
            </div>

            <div class=" card my-3 ">
                <input class="form-control" type="file" name="image" placeholder="Chọn ảnh">
                <span><?= $image_pro ?></span>
            </div>

            <div class=" card my-3 ">
                <input class="form-control" type="number" name="quantity" placeholder="Nhập số lương" value="<?= $quantity_pro ?>">
            </div>

            <div class=" card my-3 ">
                <input class="form-control" type="number" name="price" placeholder="Nhập giá tiền" value="<?= $price_pro ?>">
            </div>

            <div class=" card my-3 ">
                <input class="form-control" type="number" name="sale" placeholder="Nhập sale" value="<?= $sale_pro ?>">
            </div>

            <div class=" card my-3 ">
                <select class="form-control" name="special" id="">
                    <option value="<?= $special ?>" selected><?php echo $special_pro = $special_pro < 1 ? "đặc biệt" : "không đặc biệt"; ?></option>
                    <option value="0">Đặc biệt</option>
                    <option value="1">Không đặc biệt</option>
                </select>
            </div>

            <div class=" card my-3 ">
                <select class="form-control" name="hiden" id="">
                    <option value="<?= $hiden_pro ?>" selected><?php echo $hiden_pro = $hiden_pro < 1 ? "Hiện" : "Ẩn"; ?></option>
                    <option value="0">Hiện</option>
                    <option value="1">Ẩn</option>
                </select>
            </div>

            <div class=" card my-3 ">
                <select class="form-control" name="cate_id" id="">
                    <option value="<?= $cate_id ?>" selected><?= $cate_id ?></option>
                    <?php foreach ($post->get_val('cates') as $val) : extract($val) ?>
                        <option value="<?= $id_cate ?>"><?= $name_cate ?></option>
                    <?php endforeach; ?>
                </select>
            </div>

            <?php foreach($post->get_val_id('attributes','pro_id',$_GET['id']) as $val2): extract($val2);?>
            <div class="card my-3 d-flex flex-row">
                <input class="form-control" type="color" name="color_up[]" placeholder="Nhập màu" value="<?=$color?>" disabled>
                <input class="form-control" type="text" name="size_up[]" placeholder="Nhập size" value="<?=$size?>" disabled>
                <input class="form-control" type="number" name="number_atri_up[]" placeholder="Nhập số lượng" value="<?=$number_atri?>" disabled>
                <input class="form-control" type="number" name="id_attri[]" value="<?=$id_attri?>" hidden>
                <button class="btn btn-danger delete-properties" type="button">
                    detele
                </button>
                <a href="<?=GET?>?action=delete_atri&atri_id=<?=$id_attri?>&pro_id=<?=$_GET['id']?>" class="btn btn-dark">Xóa</a>
                <a href="<?=CONTROLLERS_ADMIN?>?action=sua_atri&atri_id=<?=$id_attri?>&pro_id=<?=$_GET['id']?>" class="btn btn-dark">Sửa</a>
            </div>
            <?php endforeach;?>
            <button class="btn btn-success add-properties" type="button">
                Thêm thuộc tính mới
            </button>
            <input type="submit" name="them_sua_sp" value="Thêm thuộc tính" class="dang_nhap_dk btn btn-danger">
            <br>
            
            <input type="submit" name="sua_sp" value="Sửa sản phẩm" class="dang_nhap_dk btn btn-danger mt-3">
        <?php endforeach; ?>
    </form>
</main>