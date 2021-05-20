<div id="main">
    <div id="banner">
        <div id="description">
            <h2><i class="fas fa-headphones-alt"></i> ENCHANTIST</h2>
            <p class="des">Hệ thống nhạc cá nhân để bạn thỏa sức thể hiện cá tính của mình</p>
        </div>
    </div>
    <div id="main-home">
        <div id="left-main">
            <div id="quote">
                <p ></p>
            </div>
            <?php if(isset($_SESSION['user'])){ ?>
                <p>login</p>
            <?php }else{ ?>
            <div id="login">
                <a href="http://localhost:8080/ProjectWeb/user/login">Đăng nhập</a>
                <a href="http://localhost:8080/ProjectWeb/user/signup">Đăng kí</a>
            </div>
            <?php }?>
        </div>
        <div id="center-main" >
           
        </div>
        <div id="right-main">
            <!-- <img src="" alt=""> -->
        </div>
    </div>
</div>