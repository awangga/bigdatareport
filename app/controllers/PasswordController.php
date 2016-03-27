<?php


class PasswordController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Password - ";
		$this->view->selectmenu	= "password";
		$groups = Users::aggregate(
		        array(
		            '$group' => array(
		                '_id' => '$group'
		            )
		        )    
		);
		$this->view->kel = $groups['result'];
		
    }
	
	public function groupAction($id=null)
	{
		$this->view->title = "List User - ";
		$this->view->selectmenu	= "password";
		$this->view->users = Users::find(
			array(
				array(
					"group" => $id
				)
			)
		);
	}
	
	public function setAction($id=null)
	{
		$this->view->title = "Set Password - ";
		$this->view->selectmenu = "password";
		if($this->request->isPost()){
			$user = Users::findById($id);
			$password = $this->request->getPost('password');
			$user->password = $this->security->hash($password);
			$response = $id;
			$user->save();
			return $this->dispatcher->forward(array(
				'action' => 'index',
				'params' => array($this->view->title,$this->view->selectmenu,$response)
			));
		}
		
	}

}

