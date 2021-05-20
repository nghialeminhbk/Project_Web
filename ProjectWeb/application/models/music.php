<?php

class Music extends VanillaModel {
		var $hasOne = array('Category' => 'Category');
		var $hasManyAndBelongsToMany = array('User' => 'User');
}