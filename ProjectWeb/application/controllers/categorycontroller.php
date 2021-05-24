<?php
session_start();
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

    function view($cateId = null, $nameCate = null, $page = 1){
        $this->doNotRenderHeader = 1;
        $title = $nameCate;
        $cateId = $cateId;
        if(isset($cateId)){
            $limit = 6;
            $offset = ($page-1)*$limit;
            $musics = $this->Category->custom("SELECT * FROM music WHERE Music.category_id = $cateId
                                               LIMIT $limit OFFSET $offset");
            $this->Category->id = $cateId;
            $this->Category->showHasMany();
            $all = $this->Category->search();
            $total = ceil(count($all['Music'])/$limit);
            // echo "<pre>";
            // var_dump($all, $total);
            // echo "</pre>";
            $this->set('cateId', $cateId);
            $this->set('musics', $musics);
            $this->set('title', $title);
            $this->set('total', $total);
            $this->set('curr_page', $page);
            $this->set('limit', $limit);
        }
    }

	function afterAction() {

	}


}