function checkTK(username){
    if(username == ""){
        return;
    }else{
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function(){
            if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                var res = this.responseText;
                if(res != '0'){
                    alert('Tên đăng nhập đã tồn tại!');
                    document.getElementById('username').value = "";
                }else{
                    return;
                }
            }
        }
        xmlhttp.open("GET", "http://localhost:8080/ProjectWeb/user/check/"+username, true);
        xmlhttp.send();
    }
}