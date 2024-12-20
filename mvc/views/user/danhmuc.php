  <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
  <div class="all__sp mt-3 container">

      <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?= CONTROLLERS_USER ?>">Trang chủ</a></li>
          <li class="breadcrumb-item active"><a href="<?= CONTROLLERS_USER ?>?action=danhmuc">Danh mục</a></li>
      </ul>
      <div class="container">
          <div class="container tieude-main p-3 mt-3">
              <a href="">
                  <span class="text-white"><i class="ti-filter"></i> Lọc sản phẩm</span>
              </a>
          </div>
          <div class="loc_sp p-3">
              <form action="<?= CONTROLLERS_USER ?>?action=danhmuc" method="post" class="grid-column mt-3 d-flex align-items-center">
                  <div class="input__form__icon card">
                      <i class="fas fa-table"></i>
                      <div class="nhap_input_login">
                          <select class="" name="cate" id="">
                              <option value="0">Danh mục</option>
                              <?php foreach ($post->get_val('cates') as $val) : extract($val); ?>
                                  <option value="<?= $id_cate ?>"><?= $name_cate ?></option>
                              <?php endforeach; ?>
                          </select>
                      </div>
                  </div>

                  <div class="input__form__icon card ">
                      <i class="fas fa-donate"></i>
                      <div class="nhap_input_login">
                          <select class="" name="price" id="">
                              <option value="0-0">Giá sản phẩm</option>
                              <option value="100000-300000">100000 - 3000000</option>
                              <option value="300000-500000">300000 - 500000</option>
                              <option value="500000">Lớn hơn 500000</option>
                          </select>
                      </div>
                  </div>
                  <input type="submit" name="loc" value="Lọc sản phẩm" class="dang_nhap_dk btn">
              </form>
          </div>
      </div>
      <main class="main__one container-xl">
          <div class="sp__main">
              <div class="row mt-3 container">
                  <?php
                    if (!empty($save_dm)) {
                        foreach ($save_dm as $val) : extract($val) ?>
                          <div class="col-xl-3 col-md-4 col-6 p-3 card">
                              <div class="card__tt">
                                  <div class="card__tt-image">
                                      <img src="<?= IMAGE ?><?= $image_pro ?>" alt="">
                                      <div class="sp__hover d-flex  justify-content-around align-items-center container">
                                          <div class="sp__hover--button">
                                              <strong><a href="<?= GET ?>?id_chitiet=<?= $id_pro ?>">Chi tiết</a></strong>
                                          </div>
                                          <div class="icon">
                                              <ul class="d-flex">
                                                  <li><a href="<?= CONTROLLERS_USER ?>?action=like&id_like=<?= $id_pro ?>"><i class="far fa-heart"></i></a></li>
                                                  <li><a href=""><i class="far fa-share-square"></i></a></li>
                                              </ul>
                                          </div>
                                      </div>
                                  </div>
                                  <!-- <div class="stdio">
                                      <span>PHUC DESIGN</span>
                                  </div> -->
                                  <div class="ten_sp">
                                      <strong><?= $title_pro ?></strong>
                                  </div>
                                  <div class="ten_sp">
                                      <span class="text-dark">Số lượng sản phẩm: </span><?= $quantity_pro ?>
                                  </div>
                                  <div class="gia_sp d-flex">
                                      <div class="tt_gia_tien">
                                          <i class="fas fa-tags"></i>
                                      </div>
                                      <div class="gia_goc">
                                          <del><span><?= $price_pro ?></span></del>
                                      </div>
                                      <div class="gach_sp mx-2"></div>
                                      <div class="gia_duocgiam">
                                          <span><?php echo number_format($sale_chinh = $price_pro - $price_pro * ($sale_pro / 100)); ?></span>
                                      </div>
                                      <div class="gach"></div>
                                      <div class="sale_sp">
                                          <span>
                                              <?= $sale_pro ?>%
                                          </span>
                                      </div>
                                  </div>
                                  <div class="new">
                                      <span>
                                          new
                                      </span>
                                  </div>

                              </div>
                          </div>
                  <?php endforeach;
                    } else {
                        echo "<h1>Sản phẩm trống</h1>";
                    } ?>

                  <ul class="pagination mt-5">
                      <li class="page-item"><a class="page-link" href="<?= CONTROLLERS_USER ?>?action=danhmuc&page=1">Trang đầu</a></li>
                      <?php for ($sum = 1; $sum <= $mang['tong_page']; $sum++) : ?>
                          <li class="page-item <?php if (isset($_GET['page']) && $_GET['page'] == $sum) {
                                                    echo "active";
                                                }
                                                if (!isset($_GET['page']) && $sum == 1) {
                                                    echo "active";
                                                } ?>"><a class="page-link" href="<?= CONTROLLERS_USER ?>?action=danhmuc&page=<?= $sum ?>"><?= $sum ?></a></li>
                      <?php
                            $tong = $sum;
                        endfor; ?>
                      <li class="page-item"><a class="page-link" href="<?= CONTROLLERS_USER ?>?action=danhmuc&page=<?= $tong ?>">Trang cuối</a></li>
                  </ul>
              </div>


          </div>

      </main>

  </div>