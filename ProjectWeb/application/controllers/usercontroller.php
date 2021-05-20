<?php
session_start();
class UserController extends VanillaController {
	
	function beforeAction () {

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
        }
    }

    function logout(){
        $this->doNotRenderHeader = 1;
        session_destroy();
        header("location: http://localhost:8080/ProjectWeb/home");
    }


    function afterAction() {

	}
}