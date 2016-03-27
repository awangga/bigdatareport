<?php

class SettingsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Settings - ";
		$this->view->selectmenu	= "settings";
		$settings = Settings::findFirst();
		$this->view->url = $settings->val;
		$this->view->id = $settings->param;
    }

}

