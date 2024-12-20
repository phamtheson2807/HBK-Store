<main>

    <h2 class="dash-title">Yêu thích</h2>
    <div class="table-responsive">
        <table class="table table-xuly ">
            <thead>
                <tr>
                    <th class="image">Ảnh san sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Price</th>
                    <th>Số lượng</th>
                    <th>Giảm giá</th>
                </tr>
            </thead>
            <tbody>
                <?php if (isset($id)) :
                    if (!empty($post->get_val_id_join('user_id', $_GET['id_user'], 'loves', 'products', 'loves.pro_id', 'products.id_pro'))) {
                        foreach ($post->get_val_id_join('user_id', $_GET['id_user'], 'loves', 'products', 'loves.pro_id', 'products.id_pro') as $val) : extract($val); ?>
                            <tr>
                                <form action="" method="post">
                                    <td class="image"><img src="<?= IMAGE ?><?= $image_pro ?>" alt="" width="100px" height="100px"></td>
                                    <td><?= $title_pro ?></td>
                                    <td><?= $price_pro ?></td>
                                    <td><?= $quantity_pro ?></td>
                                    <td><?= $sale_pro ?>%</td>
                            </tr>
                <?php endforeach;
                    } else {
                        echo "<center class='my-5'><h1>Trống sản phẩm</h1></center>";
                    }
                endif; ?>
            </tbody>

        </table>
        <tr>
            <td><input onclick="return confirm('bạn muốn xóa theo lua chon');" class="btn btn-danger" type="submit" name="delete_love" value="xóa click" id="checkall"></td>
        </tr>
        </form>
    </div>
</main>