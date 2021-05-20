<div id="page-music">
    <div class="left-page-music">
        <div class="musicFrame">
            <div class="des-music">
                <p class="name"><?=$music['Music']['name']?></p>
                <p class="singer"><?=$music['Music']['singer']?></p>
            </div>
            <iframe src="<?=BASE_SOURCE_MUSIC.$music['Music']['source']?>" width="620px" height="320px" frameborder="0" allowfullscreen=""  allow='autoplay'></iframe>
        </div>
        <div class="inforDetailMusic">
            <div class="inforMusic">
                <p><strong>Sáng tác:</strong>  <?=$music['Music']['artist']?></p><br>
                <p><strong>Lời bài hát:</strong></p>
            </div>
            <div class="loiBaiHat">
                <p><?=$music['Music']['title']?></p>
            </div>
        </div>
    </div>
    <div class="right-page-music" id="right-page-music">
    <div id="categoryList">
    <?php $count = 1;?> 
    <h2><?=$title?></h2>
        <div id="list-music">
            <?php foreach($musics as $music):?>
                <div class="music-group">
                    <div class="left-music">
                        <p class="sttMusic"><?=$count++?>.</p>
                        <div class="des-music">
                            <p class="name"> <a onclick="load('http://localhost:8080/ProjectWeb/music/view/<?=$music['Music']['id']?>', 'main'), load('http://localhost:8080/ProjectWeb/category/view/1/2', 'right-page-music')"><?=$music['Music']['name']?></a></p>
                            <p class="singer"><?=$music['Music']['singer']?></p>
                        </div>
                    </div>
                    <div class="right-music">
                        <i class="far fa-heart"></i>
                    </div>
                </div>
            <?php endforeach?>
        </div>
    </div>
    </div>
</div>
