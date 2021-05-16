<?php foreach($musics as $music):?>
    <li>
        <div class="des-music">
            <p class="name"><a href="http://localhost:8080/ProjectWeb/music/view/<?=$music['']['id']?>"><?=$music['']['name']?></a></p>
            <p class="singer"><?=$music['']['singer']?></p>
        </div>
    </li>
<?php endforeach?>