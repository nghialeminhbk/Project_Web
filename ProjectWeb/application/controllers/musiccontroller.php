<?php

class MusicController extends VanillaController {
	
	function beforeAction () {

	}
	
	
	function index() {
		// $this->Category->orderBy('name','ASC');
		// $this->Category->showHasOne();
		// $this->Category->showHasMany();
		$musics = $this->Music->search();
        $this->doNotRenderHeader = 1;
        $this->set('musics', $musics);
        // echo "<pre>";
        // var_dump($musics);
        // echo "</pre>";
	}

    function view($musicId = null, $cateId = null){
        $cateId = $cateId;
        if(isset($musicId)){
            $this->Music->id = $musicId;
            $music = $this->Music->search();
            // echo "<pre>";
            // var_dump($music);
            // echo "</pre>";
            $this->set('music', $music);
            $this->set('cateId', $cateId);
        }else{
            $music = $this->Music->search();
            // echo "<pre>";
            // var_dump($musics);
            // echo "</pre>";
        }
        $this->doNotRenderHeader = 0;
    }

    function search($keyword){
        $this->doNotRenderHeader = 1;
        $musics = $this->Music->custom("SELECT * FROM music AS M WHERE M.singer LIKE '%$keyword%' UNION SELECT * FROM music AS M WHERE M.name LIKE '%$keyword%'");
        $this->set('musics', $musics);
        // echo "<pre>";
        // var_dump($musics);
        // echo "</pre>";
    }

	function afterAction() {

	}


}