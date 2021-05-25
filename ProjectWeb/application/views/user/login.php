<div id="main">
    <div class="container signup-container">
        <div id="left-signup">
            <h2 class="text--style">Đăng nhập</h2>
            <div class="body-form">
                <form action="http://localhost:8080/ProjectWeb/user/login" method="POST">
                <table style="width:100%;">
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
                <div id="notification">
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
                <p class="login__desc">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quibusdam natus quod fuga dolorem veritatis illum modi reprehenderit provident totam id itaque libero officiis velit ex enim odit ipsum, tempora quas? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore commodi nam, maxime ex laudantium earum sunt hic eius! Quis non quidem alias, commodi fuga eaque voluptatum nostrum rem itaque aut. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat, nesciunt voluptatum nemo pariatur dolore reiciendis quaerat qui, laudantium at hic explicabo! Sed neque ipsum deserunt? Dolor molestiae fugiat aperiam provident.</p>
            </div>
        </div>
    </div>
</div>