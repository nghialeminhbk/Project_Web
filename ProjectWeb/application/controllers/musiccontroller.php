<?php
session_start();
class MusicController extends VanillaController {
	private $userId = null;
	function beforeAction () {
        if(isset($_SESSION['user'])){
            $user = $_SESSION['user'];
            $rs = $this->Music->custom("SELECT * FROM user WHERE username = '$user'");
            $this->userId = $rs[0]['User']['id'];
            $music = $this->Music->custom("SELECT * FROM music, music_user, user WHERE music.id = music_user.music_id AND music_user.user_id = user.id AND user.username = '$user'");
            $_SESSION['favorite'] = array_column(array_column($music, 'Music'), 'id');
            // echo "<pre>";
            // var_dump($this->userId);
            // echo "</pre>";
        }
	}
	
	
	function index($page = 1) {
		// $this->Category->orderBy('name','ASC');
		// $this->Category->showHasOne();
		// $this->Category->showHasMany();
        $this->doNotRenderHeader = 1;
        $limit = 6;
        $this->Music->setLimit($limit);
        $this->Music->setPage($page);
        $musics = $this->Music->search();
        $total = $this->Music->totalPages();
        // var_dump($total);
        $this->set('musics', $musics);
        $this->set('total', $total);
        $this->set('curr_page', $page);
        $this->set('limit', $limit);
        // echo "<pre>";
        // var_dump($musics);
        // echo "</pre>";
	}

    function view($musicId = null){
        if(isset($musicId)){
            $this->Music->id = $musicId;
            $this->Music->showHasOne();
            $music = $this->Music->search();
            $cateId = $music['Category']['id'];
            // echo "<pre>";
            // var_dump($music);
            // echo "</pre>";
            $this->Music->where('category_id', $cateId);
            $musics = $this->Music->search();
            // echo "<pre>";
            // var_dump($musics);
            // echo "</pre>";
            $this->set('music', $music);
            $this->set('musics', $musics);
            $this->set('cateId', $music['Category']['id']);
            $this->set('title', $music['Category']['name']);
            $comments = $this->Music->custom("SELECT * FROM comment, user WHERE comment.user_id = user.id AND comment.music_id = $musicId");
            $this->set('comments', $comments);
        }else{
            $music = $this->Music->search();
            // echo "<pre>";
            // var_dump($musics);
            // echo "</pre>";
        }
        $this->doNotRenderHeader = 1;
    }

    function search($keyword){
        $this->doNotRenderHeader = 1;
        $musics = $this->Music->custom("SELECT * FROM music AS M WHERE M.singer LIKE '%$keyword%' UNION SELECT * FROM music AS M WHERE M.name LIKE '%$keyword%'");
        $this->set('musics', $musics);
        // echo "<pre>";
        // var_dump($musics);
        // echo "</pre>";
    }

    function pagination($page = null){
        
    }

    function post(){
        $this->doNotRenderHeader = 0;
        // $musics = $this->Category->search();
        $categories = $this->Music->custom("SELECT * FROM category");
        $this->set('categories', $categories);
        $name = $_POST['name']??'';
        $artist = $_POST['artist']??'';
        $singer = $_POST['singer']??'';
        $source = $_POST['source']??'';
        $category_id = $_POST['category_id']??'';
        $title = $_POST['title']??'Lời bài hát hiện chưa được cập nhật!';
        // var_dump($name, $artist, $singer, $source, $category_id, $title);
        if(isset($_POST['submit'])){
            $rs = $this->Music->custom("INSERT INTO music VALUES (null, '$name', '$artist', '$source', '$title', '$singer', '$category_id')");
            if($rs[0]){
                $notification = "Bài hát đã được đăng thành công";
            }else{
                $notification = "Lỗi, không đăng được bài hát!";
            }
            $this->set('notification', $notification);
        }
    }

	function afterAction() {

	}


}