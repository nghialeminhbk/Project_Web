<?php

class Category extends VanillaModel {
		var $hasMany = array('Music' => 'Music');
}