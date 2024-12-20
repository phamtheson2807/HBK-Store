<main class="main_login mt-4 d-flex justify-content-center">
    <div class="form__login">
        <div class="form__login_button d-flex justify-content-center">
            <div class="button-user-left btn"><a class="btn" href="../controllers/user.php?action=thongtin">Thông tin tài khoản</a></div>
            <div class="gach"></div>
            <div class="button-user-right btn"><a class="btn" href="../controllers/user.php?action=doimk">Đổi mật khẩu</a></div>
        </div>
        <form action="" class="grid-column mt-3" method="post">
            <div class="input__form__icon card">
                <i class="far fa-envelope"></i>
                <input class=" nhap_input_login" type="email" name="email" id="" placeholder="Email của bạn">
            </div>
            <div class="input__form__icon card ">
                <i class="far fa-eye"></i>
                <input class=" nhap_input_login" type="password" name="pass" placeholder="Mật khẩu mới của bạn">
            </div>
            <input type="submit" name="doi_mk" value="Đổi mật khẩu" class="dang_nhap_dk btn">
        </form>
    </div>
</main>