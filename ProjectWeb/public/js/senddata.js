function sendData(url, data = []){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            alert("Thêm thành công !");
        }
    }
    var urlSend = url;
    for(var i=0; i<data.length; i++){
        urlSend += '/' + data[i];
    }
    xmlhttp.open("GET",urlSend, true);
    xmlhttp.send();
}

function anoun(){
    alert('hello');
}