<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>Home</title>
    <style>
        /* default  */
        html, header, body, p, ol, ul{
            padding: 0;
            margin: 0;
            font-family: Arial;
        }
        a{
            cursor: pointer;
            text-decoration: none;
        }
        a:hover{
            color:  rgb(255, 165, 0);
        }
        ol{
            list-style: none;
        }
        #main{
            margin-top: 50px;
            background: #f6dcbf;
        }
        /* header  */
        .top_page{
            background: #e1701a;
            height: 50px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 99%;
            padding: 0 10px;
            color: white;
            position: fixed;
            top: 0;
        }
        
        .leftHeader, .rightHeader{
            width: 50%;
        }
        /* right header  */
        .accountID, #iconMenu, #searchMusic{
            display: none;
        }

        .rightHeader{
            display: flex;
            flex-direction: row-reverse;
            justify-content: flex-start;
        }


        .rightHeader a{
            padding: 12px 15px;
        }

        .theLoai{
            animation-duration: 0.4s;
            animation-timing-function: cubic-bezier(0.39, 0.575, 0.565, 1);
            animation-delay: 0s;
            animation-iteration-count: 1;
            animation-direction: normal;
            animation-fill-mode: both;
            animation-play-state: running;
            animation-name: scale-up-ver-top;
            list-style-type: none;
            position: absolute;
            display: none;
            flex-direction: column;
            margin-top: 18px;
            margin-left: -30px;
            box-sizing: content-box;
            min-width: 80px;
            background: #e1701a;
            color: white;
        }

        .theLoaiID{
            transition: all .3s;
        }

        .theLoaiID:hover > .theLoai{
            display: flex;
        }

        .theLoai hr{
            width: 99%;
        }

        .theLoai li{
            text-align: center;
            padding: 0 10px;
        }

        
        /* left header  */
        .leftHeader{
            display: flex;
            flex-direction: row;
            align-items: center;
        }
        #logo{
            color: white;
            font-weight: 700;
        }
        .leftHeader a, .viewSearch{
            padding: 12px 15px;
        }
        #searchHomePage{
            height: 25px;
            width: 80%;
        }
        .viewSearch{
            display: flex;
            flex-direction: row;
            align-items: center;
            width: 60%;
            position: relative;
        }
        #iconSearch{
            color: orange;
            border: none;
        }
        #searchMusic{
            position: absolute;
            display: none;
            flex-direction: column;
            margin-top: 0px;
            margin-left: 1px;
            /* box-sizing: content-box; */
            top: 38px;
            width: 75%;
            min-width: 80px;
            background: white;
            box-shadow: 2px 2px 5px 2px rgb(155, 155, 151);
            color: #000;
            /* height: 150px;
            overflow-y: auto;
            overflow-x: hidden; */
        }
        #searchMusic .des-music{
            border-bottom: 1px solid #aaaaaa;
            padding: 10px;
        }
        #searchMusic .des-music .name a{
            padding: 0;
        }
        .div-iconsearch{
            height: 23px;
            background: white;
            display: flex;
            flex-direction: row;
            align-items: center;
            padding: 0 5px;
        }
        /* main-home */
        /* banner */
        #banner{
            background-image: url(/ProjectWeb/public/img/bts.jpg);
            height: 100vh;
            background-position: center;
            background-size: cover;
        }
        #description{
            padding-top: 170px;
            padding-left: 55%;
            padding-right: 30px;
        }
        #description h2{
            font-weight: 700;
        }
        #description p{
            font-style: italic;
        }
        /* main-home */
        #main-home{
            display: grid;
            grid-template-columns: 0.75fr 1fr 1fr;
            grid-column-gap: 10px;
            background: #f6dcbf;
        }
        #left-main, #center-main, #right-main{
            height: 100vh;
        }
        /* center-main  */
        #center-main h2{
            font-weigth: 400;
            font-size: 20px;
            text-align: center;
        }

        #list-music{
            background: white;
            box-shadow: 2px 2px 5px 2px rgb(155, 155, 151);
            padding: 10px 30px;
            border: none;
        }
        .music-group{
            border-bottom: solid 1px rgb(155, 155, 151);
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 10px 0;
        }
        .left-music{
            display: flex;
            flex: row;
            justify-content: center;
            align-items: center;
        }

        .left-music p{
            padding: 5px 10px;
        }
        .des-music .name, .sttMusic{
            font-weight: 700; 
        }

        .des-music .name{
            cursor: pointer;
        }
        .des-music .name a:hover{
            color: #e1701a;
        }
        .des-music .singer{
            font-style: italic;
            font-size: 14px;
            color: #aaaaaa;
        }
        .name a{
            color: black;
        }
        /* right-main  */
        #right-main h2{
            font-weigth: 400;
            font-size: 20px;
            text-align: center;
        }
        /* footer  */

        footer{
            background: #f7a440; 
            height: 60px;
            display: flex;
            justify-content: space-between;
            color: white;
            padding: 0px 10px;
            font-size: 12px;
        }

        #left-footer{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #left-footer i{
            padding: 10px;
            font-size: 30px;
            color: white;
            cursor: pointer;
            transition: all 0.3s;
        }

        #left-footer i:hover{
            color: #e1701a;
        }
        #right-footer{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .copyright {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        /* page-music  */
        #page-music{
            /* display: grid;
            grid-template-columns: 1fr 0.75fr; */
            display: flex;
            justify-content: center;
        }

        .musicFrame, .inforDetailMusic{
            background: white;
            box-shadow: 2px 2px 5px 2px rgb(155, 155, 151);
            padding: 10px 30px;
            border: none;
        }

        .musicFrame{
            margin-bottom: 30px;
        }

        .left-page-music{
            padding: 30px 40px;
        }

        iframe{
            padding: 30px 0;
        }
        .inforMusic{
            border-bottom: 1px solid rgb(112, 112, 110);
        }

        .inforMusic, .loiBaiHat{
            padding: 20px 0;
        }

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
            <a class="accountID">
                <p class="nameDisplay">Tên người dùng</p>
                <ol class="account">
                    <li class="yeuThichID">Danh sách yêu thích</li>
                    <li class="signoutID">Đăng xuất</li>
                </ol>
            </a>
            <a class="loginID"><p>Đăng nhập</p></a>
            <a class="suggestionID"><p>Góp ý</p></a>
            <a class="requestID"><p>Yêu cầu bài hát</p></a>
            <a class="uploadID"><p>Đăng bài hát</p></a>
            <a class="theLoaiID">
                <p>Thể loại</p>
                <ol class="theLoai scale-up-ver-top" id="theLoai">
                    
                </ol>
            </a>
        </div>
    </div>
    
</header>


