<?php

class User extends VanillaModel {
    var $hasManyAndBelongsToMany = array('Music' => 'Music');
}