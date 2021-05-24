

function addListFav(idMusic, pageMusic = null, pageType = 1, title = 'EDM '){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            if(pageMusic!=null){
                load('http://localhost:8080/ProjectWeb/music/index/'+pageMusic, 'center-main');
            }else if(pageType != null){
                load('http://localhost:8080/ProjectWeb/category/view/'+ idmusic +'/'+ title + '/' + pageType, 'center-main');
            }
        }
    }
    xmlhttp.open("GET", 'http://localhost:8080/ProjectWeb/user/addFavorite/' + idMusic, true);
    xmlhttp.send();
}