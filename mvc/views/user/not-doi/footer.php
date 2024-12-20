    <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\footer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <?php if (!empty($post->get_val('info'))) {
        foreach ($post->get_val('info') as $logo) : extract($logo); ?>
            <div class="mt-5 w-100">
                <!-- Footer -->
                <footer class="text-center text-lg-start text-black">

                    <div class="p-1 pb-0">

                        <section class="container">

                            <div class="row">

                                <div class="col-xl-4 col-sm-12 mt-3 d-flex flex-column">
                                    <a class="navbar-brand__end" href=""><img src="<?= IMAGE ?><?= $logo ?>" alt=""></a>
                                    <span class="mt-3">
                                        Nhóm 8 DA
                                    </span>
                                    <div class="footer__phone d-flex mt-3">
                                        <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fas fa-phone"></i></a>
                                        <div class="footer__phone--sdt d-flex flex-column ">
                                            <span>
                                                (+84) <?= $phone_info ?>
                                            </span>
                                            <span>
                                                (+84) <?= $phone_info ?>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <hr class="w-100 clearfix d-md-none" />

                                <div class="col-xl-4 col-sm-12 mt-3">
                                    <h6 class="text-uppercase mb-4 font-weight-bold">Trang chính</h6>
                                    <p>
                                        <a class="">Home</a>
                                    </p>
                                    <p>
                                        <a class="">Shop</a>
                                    </p>
                                    <p>
                                        <a class="">Bages</a>
                                    </p>
                                    <p>
                                        <a class="">Blog</a>
                                    </p>
                                    <p>
                                        <a class="">Contact</a>
                                    </p>
                                </div>


                                <hr class="w-100 clearfix d-md-none" />


                                <div class="col-xl-4 col-sm-12 mt-3">
                                    <h6 class="text-uppercase mb-4 font-weight-bold">
                                        Đăng kí nhận ưu đãi
                                    </h6>
                                    <p>
                                        <a class="">
                                            <!-- <?= $adress_info ?> -->
                                             
                                        </a>
                                    </p>
                                    <p>
                                    <form class="d-flex">
                                        <input class="form-control" type="text" placeholder="enter  your email">
                                        <button class="btn text-white" type="button">Sign up</button>
                                    </form>
                                    </p>
                                    <p>
                                    <div class="row">
                                        <img src="<?= IMAGE ?>Rectangle 35.png" alt="" class="col-xl-6">
                                        <img src="<?= IMAGE ?>Rectangle 36.png" alt="" class="col-xl-6">
                                    </div>
                                    </p>

                                </div>

                            </div>

                        </section>


                        <hr class="my-3">


                        <section class="p-3 pt-0">
                            <div class="row d-flex align-items-center">

                                <div class="col-md-7 col-lg-8 text-center text-md-start">

                                    <div class="p-3 text-white">
                                        © 2024 Copyright: Nhóm 8 DA CNPM
                                        <a class="text-white" href="https://mdbootstrap.com/"></a>
                                    </div>

                                </div>



                                <div class="col-md-5 col-lg-4 ml-lg-0 text-center text-md-end">

                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-facebook-f"></i></a>


                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-twitter"></i></a>


                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-google"></i></a>


                                    <a class="btn btn-outline-light btn-floating m-1" role="button"><i class="fab fa-instagram"></i></a>
                                </div>

                            </div>
                        </section>

                    </div>

                </footer>
                <div class="top" id="myBtn"> <i class="fas fa-arrow-circle-up"></i> </div>
            </div>

    <?php endforeach;
    } ?>
    <script>
        /* Initiate Magnify Function
        with the id of the image, and the strength of the magnifier glass:*/
        magnify("myimage", 3);
    </script>

    <script src="../public/js/button_top.js">
    </script>

    <script src="../public/js/button_nav.js">
    </script>


    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="../public/js/slider.js">
    </script>

    <script src="../public/js/input_img.js">
    </script>

    <script src="../public/js/check.js">
    </script>

    <script src="../public/js/buttonpre.js">
    </script>

    <script src="../public/js/validator.js"></script>
    <!-- <script>
        validator({
            form: "#form-2",
            errorSelector: ".form-message",
            rules: [
                validator.isRequired('#phone'),
                validator.isRequired('#email'),
                validator.isRequired('#name'),
                validator.isRequired('#pass'),
                validator.isRequired('#adress'),
                validator.isPhone('#phone'),
                validator.isEmail('#email'),
            ]
        });
    </script> -->

    </body>

    </html>