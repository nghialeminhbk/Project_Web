<div id="main">
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
        <!-- <div class="right-page-music" id="right-page-music">

        </div> -->
    </div>
</div>

<!-- onload="load('http://localhost:8080/ProjectWeb/category/view/<?=$cateId?>', 'right-page-music')" -->