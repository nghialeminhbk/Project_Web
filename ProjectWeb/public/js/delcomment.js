function delComment(idMusic, timmer){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            var res = this.responseText;
            if(res == '1'){
                load("http://localhost:8080/projectWeb/user/comment/" + idMusic, 'content-comment');
            }else{
                alert("Không thể xóa bình luận !");
            }
        }
    };
    xmlhttp.open("GET",'http://localhost:8080/projectWeb/user/delcomment/' + idMusic + '/' + timmer, true);
    xmlhttp.send();
    console.log('http://localhost:8080/projectWeb/user/delcomment/' + idMusic + '/' + timmer);
}