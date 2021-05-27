<div id="main">
    <div class="container signup-container">
        <div id="left-signup">
            <h2 class="text--style">Đăng kí</h2>
            <div class="body-form" >
                <form action="http://localhost:8080/ProjectWeb/user/signup" method="POST">
                <table class="table--size">
                    <tr>
                        <!-- <td>Email đăng kí</td> -->
                        <td><input type="text" placeholder="Email bạn sử dụng để đăng kí ... " id="email" id="email" onchange="checkEmail(this.value)" class="login__user" required></td>
                    </tr>
                    <tr>
                        <!-- <td>Tên đăng nhập</td> -->
                        <td><input type="text" placeholder="Tên đăng nhập ..." id="username" class="login__password login__password--b" name="username" onchange="checkTK(this.value)" required></td>
                    </tr>
                    <tr>
                        <!-- <td>Mật khẩu</td> -->
                        <td><input type="password" placeholder="Mật khẩu phải có tối thiểu 6 chữ số ..." id="password" class="login__password login__password--b login__password--bless " name="password" required></td>
                    </tr>
                    <!-- <tr>
                        <td colspan = '2'>Hoặc đăng kí với</td>
                    </tr>
                    <tr>
                        <td colspan = '2'>gg fb</td>
                    </tr> -->
                    <tr>
                        <td colspan = '2'><input name="submit" type="submit" value="Tạo mới tài khoản" id="button" class="login__btndangnhap"></td>
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