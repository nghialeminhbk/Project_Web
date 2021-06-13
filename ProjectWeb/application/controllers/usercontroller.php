<?php
session_start();
class UserController extends VanillaController {
	private $userId = null;

	function beforeAction () {
        if(isset($_SESSION['user'])){
            $user = $_SESSION['user'];
            $this->User->where('username', $user);
            $rs = $this->User->search();
            $this->userId = $rs[0]['User']['id'];
            $this->User->id = $this->userId;
            $this->User->showHMABTM();      
            $musics = $this->User->search();
            $_SESSION['favorite'] = array_column(array_column($musics['Music'], 'Music'), 'id');
            // echo "<pre>";
            // var_dump(array_search('11', $_SESSION['favorite']));
            // echo "</pre>";
        }
	}

    function login(){
        $this->doNotRenderHeader = 0;
        $username = $_POST['username']??'';
        $password = $_POST['password']??'';
        if(isset($_POST['submit'])){
           $this->User->where('username', $username);
           $this->User->where('password', $password);
           $user = $this->User->search();
           if(count($user)){
                $_SESSION['user'] = $username;
                header("location: http://localhost:8080/ProjectWeb/home");
           }else{
               $notification = "Tài khoản hoặc mật khẩu chưa chính xác !";
               $this->set('notification', $notification);
           }
        }else{
            return;
        }
    }

    function signUp(){
        $this->doNotRenderHeader = 0;
        $username = $_POST['username']??'';
        $password = $_POST['password']??''; 
        $email = $_POST['email']??'';
        if(isset($_POST['submit'])){
            $rs = $this->User->custom("INSERT INTO user VALUES (null, '$username', '$password', '$email')");
            if($rs[0]){
                $notification = "Đăng kí thành công, hãy đăng nhập để trải nghiệm web";
            }else{
                $notification = "Đăng kí thất bại, hãy kiểm tra lại !";
            }
            $this->set('notification', $notification);
        }else{
            return;
        }
        
    }

    function check($username = null){
        $this->doNotRenderHeader = 1;
        $this->User->where('username',$username);
        $users = $this->User->search();
        echo count($users);
    }

    function favorite(){
        $this->doNotRenderHeader = 1;
        if(isset($_SESSION['user'])){
            $user = $_SESSION['user'];
            $this->User->where('username', $user);
            $rs = $this->User->search();
            $userId = $rs[0]['User']['id'];
            $this->User->id = $userId;
            $this->User->showHMABTM();      
            $musics = $this->User->search();
            // echo "<pre>";
            // var_dump($musics);
            // echo "</pre>";
            $this->set('musics', $musics['Music']);
            $this->set('userId', $userId);
        }
    }

    function delFavorite($idMusic = null){
        $this->doNotRenderHeader = 1;
        $rs = $this->User->custom("DELETE FROM music_user WHERE user_id = $this->userId AND music_id = $idMusic");
    }

    function addFavorite($idMusic = null){
        $this->doNotRenderHeader = 1;
        $rs = $this->User->custom("INSERT INTO music_user VALUES (null, '$idMusic', '$this->userId')");
    }
    
    function comment($musicId = null){
        $this->doNotRenderHeader = 1;
        $musicId = $musicId;
        $comments = $this->User->custom("SELECT * FROM comment, user WHERE comment.user_id = user.id AND comment.music_id = $musicId");
        $this->set('comments', $comments);
        $this->set('musicId', $musicId);

        // echo "<pre>";
        // var_dump($comments);
        // echo "</pre>";
    }

    function addcomment($idMusic = null, $content = null){
        $this->doNotRenderHeader = 1;
        $date = date("l d-m-Y h:i:s A");
        $rs = $this->User->custom("INSERT INTO comment VALUES (null, '$this->userId', '$idMusic', '$content', '$date')");
        echo $rs[0];
    }

    function delcomment($idMusic = null, $timmer = null){
        $this->doNotRenderHeader = 1;
        $rs = $this->User->custom("DELETE FROM comment WHERE user_id = $this->userId AND music_id = $idMusic AND create_date = '$timmer'");
        echo $rs[0];
    }

    function logout(){
        $this->doNotRenderHeader = 1;
        session_destroy();
        header("location: http://localhost:8080/ProjectWeb/home");
    }

    function afterAction() {

	}
}