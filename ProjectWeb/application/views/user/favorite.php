<div class="container">
    <?php $count = 1;?>
    <h2>Danh sách các bài hát yêu thích của bạn</h2>
    <div id="list-music">
        <?php if(!empty($musics)){?>
        <?php foreach($musics as $music):?>
            <div class="music-group">
                <div class="left-music">
                    <p class="sttMusic"><?=$count++?>.</p>
                    <div class="des-music">
                        <p class="name"> <a onclick="load('http://localhost:8080/ProjectWeb/music/view/<?=$music['Music']['id']?>', 'main')"><?=$music['Music']['name']?></a></p>
                        <p class="singer"><?=$music['Music']['singer']?></p>
                    </div>
                </div>
                <div class="right-music">
                    <i onclick="delFromFav(<?=$music['Music']['id']?>)" class="fas fa-trash-alt"></i>
                </div>
            </div>
        <?php endforeach?>
        <?php }else{ ?>
            <div class="music-group">
                <p class="text--hd">Hiện không có bài hát nào trong danh sách ...</p>
            </div>
        <?php }?>
    </div>
</div>
