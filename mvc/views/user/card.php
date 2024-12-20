 <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
 <?php if (isset($_SESSION['mang_dathang'])) {
        unset($_SESSION['mang_dathang']);
    } ?>
 <main class="main__one mt-3 container-xl">
     <div class="tieude-main p-3 mt-3">
         <a href="">
             <span class="text-white"><i class="fab fa-shopify"></i> Giỏ hàng</span>
         </a>
     </div>

     <div class="list">
         <table class="list_card">
             <tr class="list_card_name">
                 <th class="p-1"> <input type="checkbox" name="" id="checkall" hidden>
                     <button class="btn btn-danger">
                         <label for="checkall" class="select">chọn tất</label>
                         <label for="checkall" class="unselect" style="display: none;">bỏ chọn</label>
                     </button>
                 </th>
                 <th>Image</th>
                 <th>Tên sản phẩm</th>
                 <th>Price</th>
                 <th>Giảm giá</th>
                 <th>Giá được giảm</th>
                 <th>Số lượng</th>
                 <th>Tổng</th>
                 <th>Chức năng</th>
             </tr>
             <form action="<?= CONTROLLERS_USER ?>?action=dathang" method="post">
                 <?php
                    if (!empty($_SESSION['cart_pro'])) {
                        $tongsp = 0;
                        foreach ($_SESSION['cart_pro'] as $val) : extract($val); ?>
                         <tr class="list_card_item list_like_item">
                             <td><input type="checkbox" name="checkbox[]" id="check" value="<?= $id_pro ?>"></td>
                             <input type="text" name="id_cart[]" value="<?= $id_pro ?>" hidden>
                             <td><img src="<?= IMAGE ?><?= $anh_pro ?>" alt=""></td>
                             <td><?= $title_pro ?></td>
                             <td><?= $price_pro  ?></td>
                             <td class="text-danger"><?= $sale_pro ?> %</td>
                             <td><?= number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)) ?></td>
                             <td>
                                 <div class=" d-flex justify-content-center">
                                     <button type="button" id="subtract" id="subtract" class=" w-25">-</button>
                                     <input type="number" class="mx-2 w-25" name="number_cart[]" id="input" value="<?= $quantity_pro ?>">
                                     <button type="button" id="add" class="w-25">+</button>
                                 </div>
                             </td>
                             <td><?= number_format($tong = $price_pro * $quantity_pro) ?></td>
                             <td><button type="button" class="btn"> <a href="<?= GET ?>?id_cart_gh=<?= $id_pro ?>" onclick="return confirm('bạn muốn xóa');">Xoá</a></button></td>
                         </tr>
                         <?php $tongsp += $tong; ?>
                 <?php endforeach;
                    } else {
                        echo "<center class='my-5'><h1>Trống sản phẩm</h1></center>";
                    }
                    ?>
         </table>
     </div>


     <div class="button__cart_gh">
         
         <?php
         if(!empty($_SESSION['cart_pro'])){
            echo "<button type='button' class='btn'><a href='". GET."?action=xoa_all_cart' class='text-white' onclick='return confirm('bạn muốn xóa theo lựa chọn');'>Xoá giỏ hàng</a></button>";
             echo "<button type='submit' name='capnhat_cart' class='btn button_one'>Cập nhật</button>";
         } 
         ?>
     </div>

     <button class="btn dat_hang_3" type="submit" name="detal_check">Chuyển qua</button>
    
     </form>
     

 </main>