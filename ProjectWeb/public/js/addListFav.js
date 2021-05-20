

function addListFav(idMusic){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            
        }
    }
    xmlhttp.open("GET", 'http://localhost:8080/ProjectWeb/user/addFavorite/' + idMusic, true);
    xmlhttp.send();
}