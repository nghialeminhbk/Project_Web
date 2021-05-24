function delFromFav(idMusic,  pageMusic = null, idCate = 1, pageType = 1, title = 'EDM trữ tình'){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            if(pageMusic != null){
                load('http://localhost:8080/ProjectWeb/music/index/'+pageMusic, 'center-main');
            }else{
                load('http://localhost:8080/ProjectWeb/user/favorite', 'main');
            }
            if(pageType != null){
                load('http://localhost:8080/ProjectWeb/category/view/'+ idCate +'/'+ title + '/'+ pageType, 'right-main');
            }
        }
    }
    xmlhttp.open("GET", 'http://localhost:8080/ProjectWeb/user/delFavorite/' + idMusic, true);
    xmlhttp.send();
}