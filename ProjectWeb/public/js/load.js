function load(url, element){
    var xmlhttp = new XMLHttpRequest();
    var e = document.getElementById(element);
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            e.innerHTML = this.responseText;
        }
    }   
    xmlhttp.open("GET",url, true);
    xmlhttp.send();
}