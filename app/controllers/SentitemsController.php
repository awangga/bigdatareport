<?php


class SentitemsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Sentitems - ";
		$this->view->selectmenu	= "sentitems";
		$response = $this->smsweb->getSentitems();
		$data = str_getcsv($response, "\n");
		$this->view->response = $data;
    }

}

