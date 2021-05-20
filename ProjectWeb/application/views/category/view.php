<div id="categoryList">
    <?php $count = 1;?>
    <h2><?=$title?></h2>
    <div id="list-music">
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
                    <i class="far fa-heart"></i>
                </div>
            </div>
        <?php endforeach?>
        <div id="pagination">
            <?php include(ROOT . DS . 'application' . DS . 'views' . DS . 'pagination.php');?>
        </div>
    </div>
</div>