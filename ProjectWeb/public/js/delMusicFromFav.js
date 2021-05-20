function delFromFav(idMusic, idUser){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            load('http://localhost:8080/ProjectWeb/user/favorite', 'main');
        }
    }
    xmlhttp.open("GET", 'http://localhost:8080/ProjectWeb/user/delFavorite/' + idMusic +'/' + idUser, true);
    xmlhttp.send();
}