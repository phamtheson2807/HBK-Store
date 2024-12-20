<main>

    <h2 class="dash-title">Thêm Sản phẩm</h2>
    <form action="" class="mt-3" method="post" enctype="multipart/form-data">
        <div class=" card my-3 ">
            <input class="form-control" type="text" name="title" placeholder="Nhập tiêu đề">
        </div>

        <textarea class="form-control" name="content" rows="5" id="editor" id="comment" placeholder="Nhập nội dung"></textarea>

        <div class="card my-3">
            <input class="form-control" type="text" name="thongtin" placeholder="Nhập thông tin">
        </div>

        <div class="card my-3">
            <input class="form-control" type="file" name="image" placeholder="Chọn ảnh">
        </div>

        <div class="card my-3">
            <input class="form-control" type="number" name="quantity" placeholder="Nhập số lương">
        </div>

        <!-- <div class="card my-3 d-flex flex-lg-row">
            <input class="form-control" type="text" name="size" value="Trống thuộc tính" id="" disabled>
            <a href="<?php //echo CONTROLLERS_ADMIN 
                        ?>?action=thuoctinh_sp" class="bg-black px-3" style="display: flex; align-items: center;">
                <span class="ti-arrow-right"></span>
            </a>
        </div> -->

        <div class="card my-3">
            <input class="form-control" type="number" name="price" placeholder="Nhập giá tiền">
        </div>

        <div class="card my-3">
            <input class="form-control" type="number" name="sale" placeholder="Nhập sale">
        </div>

        <div class="card my-3">
            <select class="form-control" name="special" id="">
                <option value="0">Đặc biệt</option>
                <option value="1">Không đặc biệt</option>
            </select>
        </div>

        <div class="card my-3">
            <select class="form-control" name="cate_id" id="">
                <?php foreach ($post->get_val('cates') as $val) : extract($val) ?>
                    <option value="<?= $id_cate ?>"><?= $name_cate ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <!-- <div class="card my-3 d-flex flex-row">
            <input class="form-control" type="color" name="color[]" placeholder="Nhập màu">
            <input class="form-control" type="text" name="size[]" placeholder="Nhập size">
            <input class="form-control" type="number" name="number_atri[]" placeholder="Nhập số lượng">
            <button class="btn btn-danger delete-properties" type="button">
                detele
            </button>
        </div>
        <button class="btn btn-success add-properties" type="button">
            Thêm thuộc tính mới
        </button>
        <br> -->
        <input type="submit" name="them_sp" value="Thêm sản phẩm" class="dang_nhap_dk btn btn-danger mt-3">

    </form>
</main>
