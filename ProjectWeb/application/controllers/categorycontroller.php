<?php

class CategoryController extends VanillaController {
	
	function beforeAction () {

	}
	
	
	function index() {
		// $this->Category->orderBy('name','ASC');
		// $this->Category->showHasOne();
		// $this->Category->showHasMany();
		$categories = $this->Category->search();
		$this->set('categories',$categories);
        $this->doNotRenderHeader = 1;
        // echo "<pre>";
        // var_dump($categories);
        // echo "</pre>";
	}

    function view($cateId = null, $nameCate = null){
        $this->doNotRenderHeader = 1;
        $title = $nameCate;
        if(isset($cateId)){
            $this->Category->showHasMany();
            $this->Category->id = $cateId;
            $musics = $this->Category->search();
            // echo "<pre>";
            // var_dump($musics);
            // echo "</pre>";
            $this->set('musics', $musics['Music']);
            $this->set('title', $title);
        }
    }

	function afterAction() {

	}


}