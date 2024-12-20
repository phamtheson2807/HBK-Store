<main>

    <h2 class="dash-title">Thêm thuộc tính sản phẩm</h2>
    <form action="<?= CONTROLLERS_ADMIN ?>?action=them_sl_sp" class="mt-3" method="post" enctype="multipart/form-data">

        <div class="card my-3 tach_check">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="check1" name="mau[]" value="đen">
                <label class="form-check-label" for="check1">Màu đen</label>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="check2" name="mau[]" value="trắng">
                <label class="form-check-label" for="check2">Màu trắng</label>
            </div>
        </div>

        <div class="card my-3 tach_check">
            <div class="">
                <input type="file" class="" id="check1" name="image[]" value="den">
                <label class="" for="check1">Màu đen</label>
            </div>
            <div class="">
                <input type="file" class="" id="check2" name="image[]" value="trang">
                <label class="" for="check2">Màu trắng</label>
            </div>
        </div>


        <div class="card my-3 tach_check">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="check1" name="option[]" value="S">
                <label class="form-check-label" for="check1">S</label>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="check2" name="option[]" value="M">
                <label class="form-check-label" for="check2">M</label>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="option[]" value="L">
                <label class="form-check-label">L</label>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="option[]" value="XL">
                <label class="form-check-label">XL</label>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" name="option[]" value="XXL">
                <label class="form-check-label">XXL</label>
            </div>
        </div>

        <input type="submit" name="them_thuoctinh" value="Đặt thuộc tính" class="dang_nhap_dk btn btn-danger">

    </form>
</main>