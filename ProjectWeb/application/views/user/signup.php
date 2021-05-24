<div id="main">
    <div class="container signup-container">
        <div id="left-signup">
            <h2>Đăng kí</h2>
            <div class="body-form">
                <form action="http://localhost:8080/ProjectWeb/user/signup" method="POST">
                <table>
                    <tr>
                        <td>Email đăng kí</td>
                        <td><input type="text" placeholder="Email bạn sử dụng để đăng kí ... " onchange="checkEmail(this.value)" id="email" name="email" required></td>
                    </tr>
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td><input type="text" placeholder="Tên đăng nhập ..." id="username" name="username" onchange="checkTK(this.value)" required></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td><input type="password" placeholder="Mật khẩu phải có tối thiểu 6 chữ số ..." id="password" name="password" required></td>
                    </tr>
                    <tr>
                        <td colspan = '2'>Hoặc đăng kí với</td>
                    </tr>
                    <tr>
                        <td colspan = '2'>gg fb</td>
                    </tr>
                    <tr>
                        <td colspan = '2'><input name="submit" type="submit" value="Tạo mới tài khoản" id="button"></td>
                    </tr> 
                </table>
                </form>
                <div class="notification">
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