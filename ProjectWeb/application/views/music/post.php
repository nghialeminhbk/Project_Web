<div id="main">
    <div class="container post-container signup-container">
        <div>
            <h2>Đăng bài hát</h2>
            <form action="http://localhost:8080/ProjectWeb/music/post" method="POST">
                <div class="body-form">
                    <table>
                        <tr>
                            <td>Tên bài hát</td>
                            <td><input type="text" name="name" placeholder="Điền tên bài hát ... " required></td>
                        </tr>
                        <tr>
                            <td>Nhạc sĩ</td>
                            <td><input type="text" name="artist" placeholder="Nhạc sĩ ..." required></td>
                        </tr>
                        <tr>
                            <td>Ca sĩ</td>
                            <td><input type="text" name="singer" placeholder="Ca sĩ, ban nhạc ..." required></td>
                        </tr>
                        <tr>
                            <td>Nguồn nhạc</td>
                            <td><input type="text" name="source" placeholder="Nguồn nhạc, id nhạc, ..." required></td>
                        </tr>
                        <tr>
                            <td>Thể loại</td>
                            <td><select name="category_id" id="" required>
                                <?php foreach($categories as $category):?>
                                    <option value="<?=$category['Category']['id']?>"><?=$category['Category']['name']?></option>
                                <?php endforeach?>
                            </select></td>
                        </tr>
                        <tr>
                            <td>Lời bài hát</td>
                            <td><textarea name="title" id="" cols="30" rows="10"></textarea></td>
                        </tr>
                    </table>
                    <p class="notification">
                        <?php
                            if(isset($notification)){
                                echo $notification;
                            }
                        ?>
                    </p>
                </div>
                <button class="button" name="submit" >Đăng bài hát</button>
            </form>
        </div>
        <div>
            <h2>Hướng dẫn</h2>
            <div class="body-form">
                <p>Bolobala</p>
            </div>
        </div>
    </div>
</div>