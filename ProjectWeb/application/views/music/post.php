<main id="main">
    <div class="container post-container signup-container">
        <div>
            <h2 class="text--style">Đăng bài hát</h2>
            <form action="http://localhost:8080/ProjectWeb/music/post" method="POST" id="form-post" class="form__dangbaihat">
                <div class="body-form form__box">
                    <table style="width: 100%;">
                        <tr>
                            <!-- <td>Tên bài hát</td> -->
                            <td><input type="text" name="name" placeholder="Điền tên bài hát ... " required class=" formdk__item formdk__item1"></td>
                        </tr>
                        <tr>
                            <!-- <td>Nhạc sĩ</td> -->
                            <td><input type="text" name="artist" placeholder="Nhạc sĩ ..." required class="formdk__item formdk__item2"></td>
                        </tr>
                        <tr>
                            <!-- <td>Ca sĩ</td> -->
                            <td><input type="text" name="singer" placeholder="Ca sĩ, ban nhạc ..." required class="formdk__item formdk__item2"></td>
                        </tr>
                        <tr>
                            <!-- <td>Nguồn nhạc</td> -->
                            <td><input type="text" name="source" placeholder="Nguồn nhạc, id nhạc, ..." required class="formdk__item formdk__item4"></td>
                        </tr>
                        <tr>
                            <!-- <td>Thể loại</td> -->
                            <td><select name="category_id" id="" required class="formdk__list">
                                <option value="" disabled selected>Thể loại</option>
                                <?php foreach($categories as $category):?>
                                    <option value="<?=$category['Category']['id']?>"><?=$category['Category']['name']?></option>
                                <?php endforeach?>
                            </select></td>
                        </tr>
                        <tr>
                            <!-- <td>Lời bài hát</td> -->
                            <td><textarea form="form-post" name="title" id="" cols="30" rows="10" placeholder="Lời bài hát" class="formdk__desc"></textarea></td>
                        </tr>
                        <button class="button formdk__btn" name="submit" >Đăng bài hát</button>
                    </table>
                    <p class="notification">
                        <?php
                            if(isset($notification)){
                                echo $notification;
                            }
                        ?>
                    </p>
                </div> 
            </form>
        </div>
        <div class="form__dangbaihat">
            <h2 class="text--style">Hướng dẫn</h2>
            <div class="body-form form__box">
            <p class="text--hd">
                    <strong>Hãy làm đúng các bước để bài hát của được đăng thành công...</strong>
                    <br>
                    - Thông tin ca sĩ, tác giả đúng và đủ
                    <br>
                    - Bao gồm file nhạc mp3, id hoặc nguồn nhạc hợp lệ
                    <br>
                    - Thể loại, giúp phân loại bài hát
                    <br>
                    - Điền lời bài hát đầy đủ
                    <br>
                    <br>
                    <em>Cảm ơn sự đóng góp của bạn!</em>
                </p>
            </div>
        </div>
    </div>
</main>