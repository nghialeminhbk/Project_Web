<div id="main">
    <div class="container signup-container">
        <div id="left-signup">
            <h2 class="text--style">Đăng nhập</h2>
            <div class="body-form">
                <form action="http://localhost:8080/ProjectWeb/user/login" method="POST">
                <table class="table--size">
                    <tr>
                        <!-- <td style="width: 50%;">Tên đăng nhập</td> -->
                        <td><input type="text" placeholder="Tên đăng nhập ... " name="username" id="username" class="login__user" required></td>
                    </tr>
                    <tr>
                        <!-- <td style="width: 50%;">Mật khẩu</td> -->
                        <td><input type="password" placeholder="Mật khẩu ..." id="password" class="login__password" name="password" required></td>
                    </tr>
                    <!-- <tr>
                        <td colspan = '2'>Hoặc đăng nhập với</td>
                    </tr>
                    <tr>
                        <td colspan = '2'>gg fb</td>
                    </tr> -->
                </table>
                <div>
                    <input name="submit" type="submit" value="Đăng nhập" class="login__btndangnhap">
                    <a href="http://localhost:8080/ProjectWeb/user/signup" class="button login__btndangky">Đăng ký</a>
                </div>
                </form>
                <div id="notification" class="notification">
                    <?php
                        if(isset($notification)){
                            echo $notification;
                        }
                    ?>
                </div>
            </div>
        </div>
        <div id="right-signup">
            <h2 class="text--style">Hướng dẫn</h2>
            <div class="body-form">
            <p class="text--hd">
                    <strong>Đăng nhập và đăng kí để có thể trải nghiệm ...</strong>
                    <br>
                    - Nghe các bài hát yêu thích
                    <br>
                    - Tạo playlist nhạc cá nhân theo cá tính mỗi người
                    <br>
                    - Theo dõi, bình luận bài hát cùng mọi người
                    <br>
                    <em>Thao tác đúng để quá trình đăng nhập, đăng kí trở nên dễ dàng hơn!</em>
                </p>
            </div>
        </div>
    </div>
</div>