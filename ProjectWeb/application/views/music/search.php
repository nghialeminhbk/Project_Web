<?php foreach($musics as $music):?>
    <li>
        <div class="des-music">
            <p class="name"><a onclick="load('http://localhost:8080/ProjectWeb/music/view/<?=$music['']['id']?>', 'main'), disvisible()"><?=$music['']['name']?></a></p>
            <p class="singer"><?=$music['']['singer']?></p>
        </div>
    </li>
<?php endforeach?>
<!-- load('http://localhost:8080/ProjectWeb/music/view/<?=$music['']['id']?>', 'main')  -->