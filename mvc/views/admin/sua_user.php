
<main>
    <h2 class="dash-title">Sửa tài khoản</h2>

    <form action="" class="mt-3" method="post" enctype="multipart/form-data">
        <?php foreach ($post->get_val_id('users','id_user',$_GET['id_user']) as $val) : extract($val) ?>
            <div class=" card my-3 ">
                <input class="form-control" type="text" name="email" placeholder="Nhập email" value="<?= $email ?>">
            </div>
            <div class=" card my-3 ">
                <input class="form-control" type="number" name="phone" placeholder="Nhập số điện thoại" value="<?= $phone ?>">
            </div>
            <div class=" card my-3 ">
                <input class="form-control" type="text" name="name" placeholder="Nhập tên" value="<?= $name ?>">
            </div>
            <div class=" card my-3 ">
                <input class="form-control" type="text" name="adress" placeholder="Nhập địa chỉ" value="<?= $adress ?>">
            </div>
            <div class=" card my-3 ">
                <input class="form-control" type="text" name="pass" placeholder="Nhập mật khẩu" value="<?= $pass ?>">
            </div>
            <div class=" card my-3 ">
                <input class="form-control" type="file" name="avatar" placeholder="Chọn ảnh">
                <span><?= $avatar ?></span>
            </div>
            <div class=" card my-3 ">
                <select class="form-control" name="special" id="">
                    <option value="<?= $role ?>" selected>
                    <?php if($role < 1){
                        echo "người dùng";
                    }else if($role > 1){
                        echo "nhân viên";
                    }else{
                        echo "admin";
                    }  ?></option>
                    <option value="0">Người dùng</option>
                    <option value="1">Admin</option>
                    <option value="2">nhân viên</option>
                </select>
            </div>

            <div class=" card my-3 ">
                <select class="form-control" name="hiden" id="">
                    <option value="<?= $look ?>" selected><?php echo $look =  $look < 1 ? "Hiện" : "Ẩn"; ?></option>
                    <option value="0">Hiện</option>
                    <option value="1">Ẩn</option>
                </select>
            </div>

            <input type="submit" name="sua_user" value="Sửa" class="dang_nhap_dk btn btn-danger">
        <?php endforeach; ?>
    </form>
</main>