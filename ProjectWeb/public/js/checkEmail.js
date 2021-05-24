function checkEmail(email){
    var emailRGX = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;
    if(!emailRGX.test(email)){
        alert("email chưa hợp lệ ! (Thử kiểm tra các lỗi thiếu @, định dạng sai, ...)");
    }else{
        return;
    }
}