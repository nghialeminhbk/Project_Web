function postComment(content, idMusic){
    if(content == ""){
        alert("Bạn phải nhập nội dung, trước khi bình luận !");
        return;
    }else{
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function(){
            if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                var res = this.responseText;
                if(res == '1'){
                    load("http://localhost:8080/projectWeb/user/comment/" + idMusic, 'content-comment');
                    document.getElementById('comment').value = "";
                }else{
                    alert("Không thể đăng bình luận !");
                }
            }
        }
        xmlhttp.open("GET",'http://localhost:8080/projectWeb/user/addcomment/' + idMusic + '/' + content, true);
        xmlhttp.send();
    }   
}