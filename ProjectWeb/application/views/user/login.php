<div id="main">
    <div class="container signup-container">
        <div id="left-signup">
            <h2>Đăng nhập</h2>
            <div class="body-form">
                <form action="http://localhost:8080/ProjectWeb/user/login" method="POST">
                <table>
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td><input type="text" placeholder="Tên đăng nhập ... " name="username" id="username" required></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td><input type="password" placeholder="Mật khẩu ..." id="password" name="password" required></td>
                    </tr>
                    <tr>
                        <td colspan = '2'>Hoặc đăng nhập với</td>
                    </tr>
                    <tr>
                        <td colspan = '2'>gg fb</td>
                    </tr>
                </table>
                <div>
                    <input class="button" name="submit" type="submit" value="Đăng nhập">
                    <a href="http://localhost:8080/ProjectWeb/user/signup" class="button">Đăng ký</a>
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
            <h2>Hướng dẫn</h2>
            <div class="body-form">
                <p>Xàm le</p>
            </div>
        </div>
    </div>
</div>