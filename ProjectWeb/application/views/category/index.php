<?php foreach($categories as $category):?>
    <li onClick="load('http://localhost:8080/ProjectWeb/category/view/<?=$category['Category']['id']?>/<?=$category['Category']['name']?>', 'right-main')" ><?=$category['Category']['name']?></li>
    <hr>
<?php endforeach?>