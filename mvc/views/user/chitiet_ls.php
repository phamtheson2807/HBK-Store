<main class="main__one mt-3 container-xl">
    <ul class="breadcrumb">
        <li class="breadcrumb-item"><a href="<?= CONTROLLERS_USER ?>?action=<?=$action = isset($id)?'lichsu':'lichsu_sdt'?>">Lịch sử</a></li>
        <li class="breadcrumb-item active"><a href="<?= CONTROLLERS_USER ?>?action=chitiet_ls&id=<?=$_GET['id']?>">Chi tiết lịch sử mua hàng</a></li>
    </ul>
    <h2 class="dash-title mt-3">Chi tiết sản đơn hàng</h2>
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
                    <th>Tiêu đề</th>
                    <th>Nội dung</th>
                    <th>Ảnh</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                    <th>Sale</th>
                    <th>Ngày thêm</th>
                    <th>Đặc biệt</th>
                    <th>View</th>
                    <th>Chi tiết</th>
                </tr>
            </thead>
            <tbody>
                <pre>
                <?php
                if (!empty($post->thongke_order_detail($_GET['id']))) {
                    foreach ($post->thongke_order_detail($_GET['id']) as $val) : extract($val); ?>
                        <tr>
                            <form action="" method="post">
                                <td><input type="checkbox" name="checkbox[]" id="check" value="<?= $id_detail ?>"></td>
                                <td><?= $title_pro ?></td>
                                <td><?= substr($content_pro, 0, 50) ?></td>
                                <td><img src="<?= IMAGE ?><?= $image_pro ?>" width="100px" height="100px" alt=""></td>
                                <td><?= $quantity_pro ?></td>
                                <td><?= $price_pro ?></td>
                                <td><?= $sale_pro ?></td>
                                <td><?= $date_pro ?></td>
                                <td><?php echo $special_pro = $special_pro < 1 ? "Đặc biệt" : "Không đặc biệt"; ?></td>
                                <td><?= $view_pro ?></td>
                                <td><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>" class="btn btn-warning">Chi tiết</a></td>
                        </tr>
                <?php endforeach;
                } ?>
            </tbody>

        </table>
        <tr>
            <!-- <td><input onclick="return confirm('bạn muốn xóa theo lua chon');" class="btn btn-danger" type="submit" name="delete_user" value="xóa click" id="checkall"></td> -->
        </tr>
        </form>
    </div>
</main>