<?php
if(!isset($_COOKIE['id_admin'])){
    header("location:../controllers/user.php");
}
//file dc include tat ca cac xu ly chi de file 1 cap
// neu ma su dung post o from ta chuyen du lieu tai chinh trang admin.php
include_once "../models/function.php";
include_once "../controllers/admin/post.php";

include_once "../views/admin/nav.php";
if(isset($_GET['action'])){
    switch($_GET['action']){
        case "main":
            include_once "../views/admin/main.php";
        break;
        case "danhsachtk":
            include_once "../views/admin/users.php";
        break;
        case "danhsachsp":
            include_once "../views/admin/sanpham.php";
        break;
        case "themsp":
            include_once "../views/admin/themsp.php";
        break;
        case "sua_atri":
            include_once "../views/admin/suatri.php";
        break;
        case "thuoctinh_sp":
            include_once "../views/admin/thuoctinh_sp.php";
        break;
        case "them_sl_sp":
            include_once "../views/admin/soluong_sp.php";
        break;
        case "sua_user":
            include_once "../views/admin/sua_user.php";
        break;
        case "danhmuc":
            include_once "../views/admin/danhmuc.php";
        break;
        case "sua_dm":
            include_once "../views/admin/suadanhmuc.php";
        break;
        case "sua_sp":
            include_once "../views/admin/suasanpham.php";
        break;
        case "danhsachbl":
            include_once "../views/admin/binhluan.php";
        break;
        case "chitiet_cm":
            include_once "../views/admin/bl_chitiet.php";
        break;
        case "danhsachdh":
            include_once "../views/admin/donhang.php";
        break;
        case "chitiet_order":
            include_once "../views/admin/donhang_ct.php";
        break;
        case "danhsach":
            include_once "../views/admin/donhang_ct.php";
        break;
        case "thongkesp":
            include_once "../views/admin/thongkesp.php";
        break;
        case "danhsachinfo":
            include_once "../views/admin/info.php";
        break;
        case "dsbanner":
            include_once "../views/admin/banner.php";
        break;
        case "dsyeuthich":
            include_once "../views/admin/yeuthich.php";
        break;
        case "dsalbum":
            include_once "../views/admin/album.php";
        break;
        case "danhsachnew":
            include_once "../views/admin/new.php";
        break;
        case "them_new":
            include_once "../views/admin/them_new.php";
        break;
        case "sua_new":
            include_once "../views/admin/sua_new.php";
        break;
        default:
            include_once "../views/admin/main.php";
        break;
    }
}else{
    include_once "../views/admin/main.php";
}
include_once "../views/admin/footer.php";
