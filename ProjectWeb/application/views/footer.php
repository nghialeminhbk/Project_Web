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
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'load.js');?>
        const searchbar = document.getElementById('searchHomePage');

        function disvisible(){
            searchbar.value = "";
            document.getElementById('searchMusic').setAttribute('style','display: none');
        }

        function reset(str){
            if(str == ""){
              document.getElementById('searchMusic').setAttribute('style','display: none');
              return;
            }else{
                return;
            }
        }

        <?php include(ROOT.DS.'public'.DS.'js'.DS.'senddata.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'search.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'checkEmail.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'checkTK.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'addListFav.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'delMusicFromFav.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'postcomment.js');?>
        <?php include(ROOT.DS.'public'.DS.'js'.DS.'delcomment.js');?>
    </script>
</body>
</html>