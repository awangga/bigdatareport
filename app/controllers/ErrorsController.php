<?php


class ErrorsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Errors - ";
		$this->view->selectmenu	= "errors";
		$response = $this->smsweb->getErrors();
		$data = str_getcsv($response, "\n");
		$this->view->response = $data;
    }

}

