<?php


class CommentsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Comments - ";
		$this->view->selectmenu	= "comments";
		$response = $this->smsweb->getComments();
		$data = str_getcsv($response, "\n");
		$this->view->response = $data;
		
    }

}

