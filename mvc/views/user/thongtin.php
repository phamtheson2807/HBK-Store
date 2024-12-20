<main class="main_login mt-4 d-flex justify-content-center">
    <div class="form__login">
        <div class="form__login_button d-flex justify-content-center">
            <div class="button-user-left btn"><a class="btn" href="../controllers/user.php?action=thongtin">Thông tin tài khoản</a></div>
            <div class="gach"></div>
            <div class="button-user-right btn"><a class="btn" href="../controllers/user.php?action=doimk">Đổi mật khẩu</a></div>
        </div>
        <form action="" class="grid-column mt-3" method="post" enctype="multipart/form-data">
            <?php
            if (isset($id)) {
                foreach ($post->get_val_id('users', 'id_user', $id) as $val) : extract($val); ?>
                    <div class="input__form__icon card ">
                        <i class="fas fa-phone"></i>
                        <input class=" nhap_input_login" type="number" name="phone" placeholder="Phone của bạn" value="<?= $phone ?>">
                    </div>
                    <div class="input__form__icon card ">
                        <i class="far fa-user"></i>
                        <input class=" nhap_input_login" type="text" name="name" placeholder="Tên của bạn" value="<?= $name ?>">
                    </div>
                    <div class="input__form__icon card ">
                        <i class="far fa-address-card"></i>
                        <input class=" nhap_input_login" type="text" name="adress" placeholder="địa chỉ của bạn" value="<?= $adress ?>">
                    </div>
                    <div class="input__form__icon card ">
                        <i class="fas fa-file"></i>
                        <div class="btn">
                            <input type="file" name="avatar" id="upload_file" onchange="getImagePreview(event)">
                        </div>
                    </div>
                    <center>
                        <div id="preview">
                            <img class="preview" src="<?= IMAGE ?><?= $avatar ?>" alt="">
                        </div>
                    </center>
                    <input type="submit" value="Đổi thông tin" name="doi_tt" class="dang_nhap_dk btn">
            <?php endforeach;
            } else {
                header("location:".CONTROLLERS_USER);
            } ?>
        </form>
    </div>
</main>