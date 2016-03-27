<?php

class SendController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Send - ";
		$this->view->selectmenu	= "send";
		if($this->request->isPost()){
			$response = $this->smsweb->sendSMS(
				$this->request->getPost('rcpt'),
				$this->request->getPost('msg')
				);
			return $this->dispatcher->forward(array(
				'action' => 'sent',
				'params' => array($this->view->title,$this->view->selectmenu,$response)
			));
		}
		
    }

	public function sentAction($title,$selectmenu,$response)
	{
		$this->view->title = $title;
		$this->view->selectmenu = $selectmenu;
		$this->view->response = $response;
	}
	
	public function personalAction($num=null)
	{
		$this->view->title = "Sending Personal - ";
		$this->view->selectmenu = "mpersonal";
		$this->view->number = $num;
		if($this->request->isPost()){
			$response = $this->smsweb->sendSMS(
				$this->request->getPost('rcpt'),
				$this->request->getPost('msg')
				);
			return $this->dispatcher->forward(array(
				'action' => 'sent',
				'params' => array($this->view->title,$this->view->selectmenu,$response)
			));
		}
	}
	
	public function groupAction()
	{
		$this->view->title = "Sending Group - ";
		$this->view->selectmenu = "mgroup";
		$groups = Users::aggregate(
		        array(
		            '$group' => array(
		                '_id' => '$group'
		            )
		        )    
		);
		$this->view->kel = $groups['result'];
		if($this->request->isPost()){
			$group=$this->request->getPost('group');
			$userslist = Users::find(
			        array(
			            array(
			                'group' => $group
			            )
			        )    
			);
			
			$rcpt="";
			foreach ($userslist as $user){
				if(!$rcpt){
				$rcpt = $user->num;
				}else{
				$rcpt = $rcpt.','.$user->num;
				}
			}
			$response = $this->smsweb->sendSMS(
				$rcpt,
				$this->request->getPost('msg')
				);
			return $this->dispatcher->forward(array(
				'action' => 'sent',
				'params' => array($this->view->title,$this->view->selectmenu,$response)
			));
		}
	}
	
	public function groupsAction()
	{
		$this->view->title = "Sending Groups - ";
		$this->view->selectmenu = "mgroups";
		$groups = Users::aggregate(
		        array(
		            '$group' => array(
		                '_id' => '$group'
		            )
		        )    
		);
		$this->view->kel = $groups['result'];
		if($this->request->isPost()){
			$groups=$this->request->getPost('group');
			$responses = '';
			foreach ($groups as $group){
				$userslist = Users::find(
				        array(
				            array(
				                'group' => $group
				            )
				        )    
				);
			
				$rcpt="";
				foreach ($userslist as $user){
					if(!$rcpt){
					$rcpt = $user->num;
					}else{
					$rcpt = $rcpt.','.$user->num;
					}
				}
				$response = $this->smsweb->sendSMS(
					$rcpt,
					$this->request->getPost('msg')
					);
				$responses=$responses."\n".$response;
			}
			return $this->dispatcher->forward(array(
				'action' => 'sent',
				'params' => array($this->view->title,$this->view->selectmenu,$responses)
			));
		}
	}

}

