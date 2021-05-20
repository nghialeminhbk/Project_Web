
let turn = 0;
function addListFav(idMusic){
    var e = document.getElementById(idMusic);
    if(turn == 0){
        turn = 1;
        e.className = e.className.replace("fas ", "far ");
    }else{
        turn = 0;
        e.className = e.className.replace("far ", "fas ");
    }
    console.log(turn);
}