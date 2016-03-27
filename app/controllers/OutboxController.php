<?php


class OutboxController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Outbox - ";
		$this->view->selectmenu	= "outbox";
		$response = $this->smsweb->getOutboxs();
		$data = str_getcsv($response, "\n");
		$this->view->response = $data;
		
    }

}

