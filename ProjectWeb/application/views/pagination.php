<?php if($curr_page > 1){ 
            $prev = $curr_page - 1;?>
            <a onclick="load('http://localhost:8080/ProjectWeb/music/index/<?=$prev?>', 'center-main')"><i class="fas fa-caret-left"></i></a>
            <?php } ?>
<?php for($i = 1; $i<=$total; $i++){
        if($curr_page == $i){?>   
            <strong onclick="load('http://localhost:8080/ProjectWeb/music/index/<?=$i?>', 'center-main')"><?=$i?></strong>
        <?php } 
        } ?>
<?php if($curr_page < $total){
            $next = $curr_page + 1; ?>
            <a onclick="load('http://localhost:8080/ProjectWeb/music/index/<?=$next?>', 'center-main')"><i class="fas fa-caret-right"></i></a>
        <?php } ?>
