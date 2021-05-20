<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>Home</title>
    <style>
        <?php include(ROOT . DS . 'public' . DS . 'css' . DS . 'style.css')?>
    </style>
</head>
<body onload="load('http://localhost:8080/ProjectWeb/music/index', 'center-main'), load('http://localhost:8080/ProjectWeb/category/index', 'theLoai')">
<!-- <div class="search-bar">
    <input type="text" name="search" id="search" placeholder="Nhập tên ca sĩ hoặc bài hát để tìm kiếm ... " onkeyup="search(this.value)">
    <div id="icon-search">
        <i class="fas fa-search"></i>
    </div>
</div> -->
<header>
    <div class="top_page">
        <div class="leftHeader">
            <i class="iconHeader fa fa-bars" id="iconMenu" onclick="showMenu()"></i>
            <a href="http://localhost:8080/ProjectWeb/home" id="logo" class="viewLogo"><i class="fas fa-headphones-alt"></i> ENCHANTIST</a>
            <div id="viewSearchID" class="viewSearch">
                <input type="search" id="searchHomePage" placeholder="Tìm theo bài hát hoặc ca sĩ" autocomplete="off" onkeyup="search(this.value)">
                <ol id="searchMusic">
                </ol>
                <div class="div-iconsearch">
                    <i class="viewIconSearch iconHeader fa fa-search" id="iconSearch" onclick="viewSearchHeader()"></i>
                </div>
            </div>
        </div>
        <div class="rightHeader" id="rightMenuID">
        <?php
            if(isset($_SESSION['user'])){ ?>
            <div class="accountID">
                <p id="nameDisplay"><?=$_SESSION['user']?></p>
                <ol class="account">
                    <li class="yeuThichID" onclick="load('http://localhost:8080/ProjectWeb/user/favorite', 'main')">Danh sách yêu thích</a></li>
                    <hr>
                    <li class="signoutID"> <a href="http://localhost:8080/ProjectWeb/user/logout">Đăng xuất</a></li>
                </ol>
            </div>
        <?php }else{ ?>
            <a class="loginID" href="http://localhost:8080/ProjectWeb/user/login"><p>Đăng nhập</p></a>
        <?php }
            ?>
            <a class="suggestionID"><p>Góp ý</p></a>
            <a class="requestID"><p>Yêu cầu bài hát</p></a>
            <?php if(isset($_SESSION['user'])){?>
            <a href="http://localhost:8080/ProjectWeb/music/post" class="uploadID"><p>Đăng bài hát</p></a>
            <?php }else{ ?>
            <a href="http://localhost:8080/ProjectWeb/user/login" class="uploadID"><p>Đăng bài hát</p></a>
            <?php }?>
            <a class="theLoaiID">
                <p>Thể loại</p>
                <ol class="theLoai scale-up-ver-top" id="theLoai">
                    
                </ol>
            </a>
        </div>
    </div>
    
</header>   

