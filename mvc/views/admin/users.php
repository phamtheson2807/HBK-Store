<main>

    <h2 class="dash-title">Overview</h2>
    <div class="table-responsive">
        <table class="table table-xuly ">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" name="" id="checkall" hidden>
                        <button class="btn btn-danger">
                            <label for="checkall" class="select">chọn tất</label>
                            <label for="checkall" class="unselect" style="display: none;">bỏ chọn</label>
                        </button>
                    </th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Tên</th>
                    <th>Địa chỉ</th>
                    <th>mật khẩu</th>
                    <th>Ảnh</th>
                    <th>Quyền</th>
                    <th>Kích hoạt</th>
                    <th>Mã</th>
                    <th>Yêu thích</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <?php //var_dump($post->get_val('users'));
                // if(isset($_POST['delete_user'])){
                //     var_dump($_POST);
                // }
                if (!empty($post->get_val('users'))) {
                    foreach ($post->get_val('users') as $val) : extract($val); ?>
                        <tr>
                            <form action="" method="post">
                                <td><input type="checkbox" name="checkbox[]" id="check" value="<?= $id_user ?>"></td>
                                <td><?= $email ?></td>
                                <td><?= $phone ?></td>
                                <td><?= $name ?></td>
                                <td><?= $adress ?></td>
                                <td><?= $pass ?></td>
                                <td><img src="../public/img/<?= $avatar ?>" width="100px" height="100px" alt=""></td>
                                <td><?php if ($role < 1) {
                                        echo "người dùng";
                                    } else if ($role > 1) {
                                        echo "nhân viên";
                                    } else {
                                        echo "admin";
                                    }  ?></td>
                                <td><?php echo $look = $look < 1 ? "bình thường" : "bị khóa"; ?></td>
                                <td><?= $code_mk ?></td>
                                <td><a href="<?= CONTROLLERS_ADMIN ?>?action=dsyeuthich&id_user=<?= $id_user ?>" class="btn btn-danger">thích</a></td>
                                <td><a href="<?= CONTROLLERS_ADMIN ?>?action=sua_user&id_user=<?= $id_user ?>" class="btn btn-warning">Sửa</a></td>
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>

        </table>
        <tr>
            <td><input onclick="return confirm('bạn muốn xóa theo lua chon');" class="btn btn-danger" type="submit" name="delete_user" value="xóa click" id="checkall"></td>
        </tr>
        </form>
    </div>


</main>