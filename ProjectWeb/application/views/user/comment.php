<?php foreach($comments as $comment): ?>
    <div class="form-comment">
        <div class="user-comment">
            <p class="name"><?=$comment['User']['username']?></p>
            <p class="timmer"><?=$comment['Comment']['create_date']?></p>
            <?php if($comment['User']['username'] == $_SESSION['user']){?>
                <i onclick="delComment(<?=$musicId?>, '<?=$comment['Comment']['create_date']?>')" class="fas fa-trash-alt"></i>
            <?php }?>
        </div>
        <p class="content-comment"><?=$comment['Comment']['content']?></p>
    </div>
<?php endforeach?>  