<main class="main_login mt-4 d-flex justify-content-center">
        <div class="form__login">
            <div class="form__login_button d-flex justify-content-center">
                <div class="button-user-left btn"><a class="btn" href="../controllers/user.php?action=login">Đăng nhập</a></div>
                <div class="gach"></div>
                <div class="button-user-right btn"><a class="btn" href="../controllers/user.php?action=dangky">Đăng ký</a></div>
            </div>
            <form action="" id="form-2" class="grid-column mt-3" method="post" enctype="multipart/form-data">
                <div class="input__form__icon card ">
                    <i class="fas fa-phone"></i>
                    <input class=" nhap_input_login" type="number" name="phone" placeholder="Phone của bạn" id="phone">
                    <span style="color: red; font-size: 12px" class="form-message"></span>
                </div>
                <div class="input__form__icon card">
                    <i class="far fa-envelope"></i>
                    <input class=" nhap_input_login" type="email" name="email" placeholder="Email của bạn" id="email">
                    <span style="color: red; font-size: 12px" class="form-message"></span>
                </div>
                <div class="input__form__icon card">
                    <i class="far fa-user"></i>
                    <input class=" nhap_input_login" type="text" name="name" placeholder="Tên của bạn" id="name">
                    <span style="color: red; font-size: 12px" class="form-message"></span>
                </div>
                <div class="input__form__icon card">
                    <i class="far fa-eye"></i>
                    <input class=" nhap_input_login" type="password" name="pass" placeholder="Mật khẩu của bạn" id="pass" >
                    <span style="color: red; font-size: 12px" class="form-message"></span>
                </div>
                <div class="input__form__icon card">
                    <i class="far fa-address-card"></i>
                    <input class=" nhap_input_login" type="text" name="adress" placeholder="địa chỉ của bạn" id="adress">
                    <span style="color: red; font-size: 12px" class="form-message"></span>
                </div>
                <div class="input__form__icon card">
                    <i class="fas fa-file"></i>
                    <input type="file" name="image">
                </div>
                <input type="submit" name="dangky_tk" value="Đăng ký" class="dang_nhap_dk btn">
            </form>
        </div>
    </main>