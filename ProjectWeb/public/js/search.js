function search(search){
    setTimeout(() => {
        console.log(search);
        if(search == ""){
            document.getElementById('searchMusic').setAttribute('style','display: none');
            return;
        }else{
            document.getElementById('searchMusic').setAttribute('style','display: flex');
            var xmlhttp = new XMLHttpRequest();
            var url = 'http://localhost:8080/ProjectWeb/music/search/'+search;
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                    load(url, 'searchMusic');
                }
            }
            xmlhttp.open("GET", url, true);
            xmlhttp.send();
            return;
        }
    }, 300);
}