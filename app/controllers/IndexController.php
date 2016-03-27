<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
		$this->view->title = "Home - ";
		$this->view->selectmenu	= "home";
    }

}

