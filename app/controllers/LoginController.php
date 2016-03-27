<?php

class LoginController extends ControllerBase
{

    public function indexAction()
    {
		$this->view->title = "Home - ";
		$this->view->selectmenu	= "home";
		/*if ($this->session->has("user-name")) {

		            // Retrieve its value
		            $name = $this->session->get("user-name");
					echo $name;
		       }
		$this->view->disable();
		//$this->session->set("user-name", "rolly ganteng");
		$this->session->remove("user-name");
		*/
    }

}

