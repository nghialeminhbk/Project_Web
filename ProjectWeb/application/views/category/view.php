<div id="categoryList">
    <?php $count = ($curr_page-1)*$limit+1;?>
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
                <?php if(!isset($_SESSION['user'])){?>
                    <i class="far fa-heart"></i>
                    <?php }else{?>
                    <?php if(array_search($music['Music']['id'], $_SESSION['favorite']) !== false){?>
                            <i id="<?=$music['Music']['id']?>" onclick="delFromFav(<?=$music['Music']['id']?>, null, <?=$curr_page?>, <?=$title?>)" class="fas fa-heart"></i>
                    <?php }else{?>
                            <i id="<?=$music['Music']['id']?>" onclick="addListFav(<?=$music['Music']['id']?>, null, <?=$curr_page?>, <?=$title?>)" class="far fa-heart"></i>
                    <?php }}?>
                </div>
            </div>
        <?php endforeach?>
        <div id="pagination">
            <?php if($curr_page > 1){ 
                $prev = $curr_page - 1;?>
                <a onclick="load('http://localhost:8080/ProjectWeb/category/view/<?=$cateId?>/<?=$title?>/<?=$prev?>', 'right-main')"><i class="fas fa-caret-left"></i></a>
                <?php } ?>
            <?php for($i = 1; $i<=$total; $i++){
                if($curr_page == $i){?>   
                    <strong onclick="load('http://localhost:8080/ProjectWeb/category/view/<?=$cateId?>/<?=$title?>/<?=$i?>', 'right-main')"><?=$i?></strong>
                <?php } 
                } ?>
            <?php if($curr_page < $total){
                $next = $curr_page + 1; ?>
                <a onclick="load('http://localhost:8080/ProjectWeb/category/view/<?=$cateId?>/<?=$title?>/<?=$next?>', 'right-main')"><i class="fas fa-caret-right"></i></a>
            <?php } ?>
        </div>
    </div>
</div>