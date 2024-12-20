<main>

    <h2 class="dash-title">Thêm số lượng sản phẩm</h2>
    <form action="<?= CONTROLLERS_ADMIN ?>?action=themsp" class="mt-3" method="post" enctype="multipart/form-data">

        <?php foreach ($color_img as $val) : extract($val)?>
            <div class="card my-3">
                <div class="form-check">
                    <label class="form-check-label" for="check1">Màu <?= $color ?></label>
                    <input type="text" name="color[]" value="<?= $color ?>" hidden>
                    <input type="text" name="img[]" value="<?= $img ?>" hidden>
                </div>
            </div>
            <div class="card my-3 p-3">
                <?php foreach ($size as $key => $val2) :?>
                    <div class="form-check d-flex w-50">
                        <label class="form-check-label flex-grow-1" for="check2"><?=$val2?></label>
                        <input type="text" value="<?=$val2?>" name="size[<?=$key?>][]" hidden>
                        <input type="number" name="number[<?=$key?>][]" class="flex-grow-2">
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endforeach; ?>

        <input type="submit" name="them_thuoctinh_sl" value="Thêm" class="dang_nhap_dk btn btn-danger">

    </form>
</main>