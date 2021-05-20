<footer>
    <div id="left-footer">
        <i class="fab fa-app-store"></i>
        <i class="fab fa-google-play"></i>
        <i class="fab fa-facebook-square"></i>
        <i class="fab fa-instagram"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-github"></i>
    </div>
    <div id="right-footer">
        <div class="copyright">
            <p>Make by @webAplus</p>
            <p>&copy enchantist.com.vn All rights reserved</p>
        </div>
    </div>
</footer>
<script>
    // function visible(element){
    //     var e = document.getElementById(element);
    //     e.setAttribute('style', "display: flex");
    // }
    // function unvisible(element){
    //     var e = document.getElementById(element);
    //     e.setAttribute('style', "display: none");
    // }
</script>
<script>   
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
    </script>
    <script>
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
    </script>
    <script>
       <?php include(ROOT.DS.'public'.DS.'js'.DS.'checkTK.js');?>
       <?php include(ROOT.DS.'public'.DS.'js'.DS.'addListFav.js');?>
    </script>
</body>
</html>