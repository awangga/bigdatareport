<?php


class ParserController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
		$this->view->title = "Outbox - ";
		$this->view->selectmenu	= "outbox";
		$response = $this->smsweb->getCommands();
		$data = str_getcsv($response, "\n");
		$sendresponses = "";
		print_r($response);
		if(!empty($response)){
			foreach ($data as $jsonsms){
				$sms = json_decode($jsonsms);
				$textpart = str_getcsv($sms->msg,"#");
				$group=$textpart[0];
				$msg=$textpart[1];
				$userslist = Users::find(
				        array(
				            array(
				                'group' => $group
				            )
				        )    
				);
				$num = str_replace("+62","0",$sms->from);
				$cekuserongroup = Users::find(
				        array(
				            array(
				                'group' => $group,
								'num'=> $num
				            )
				        )    
				);
				if($userslist && $cekuserongroup){//if group exist
					$rcpt="";
					foreach ($userslist as $user){
						if(!$rcpt){
						$rcpt = $user->num;
						}else{
						$rcpt = $rcpt.','.$user->num;
						}
					}
					$sendresponse = $this->smsweb->sendSMS(
						$rcpt,
						$msg
						);
				}
				$sendresponses = $sendresponses."\n".$sendresponse;
			}
		}
		$this->view->response = $sendresponses;
    }

}

