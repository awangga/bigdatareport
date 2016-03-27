<?php

class SmsWeb
{
	public function getURL(){
		$url = "http://simpon.ddns.net/";
		return $url;
	}
    
	public function post($url,$params)
    {
		$postData = '';
	   //create name value pairs seperated by &
	   foreach($params as $k => $v) 
	   { 
	      $postData .= $k . '='.$v.'&'; 
	   }
	   rtrim($postData, '&');

	    $ch = curl_init();  

	    curl_setopt($ch,CURLOPT_URL,$url);
	    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
	    curl_setopt($ch,CURLOPT_HEADER, false); 
	    curl_setopt($ch, CURLOPT_POST, count($postData));
	    curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);    

	    $output=curl_exec($ch);

	    curl_close($ch);
	    return $output;
    }
	public function sendSMS($rcpt,$msg)
	{
		$params = array(
		   "rcpt" => $rcpt,
		   "msg" => $msg
		);
		$response = $this->post($this->getURL().'s.py',$params);
		return $response;
	}
	public function getOutboxs()
	{
		$params = "outbox";
		$response = $this->post($this->getURL().'outboxs.py',$params);
		return $response;
	}
	public function getSentitems()
	{
		$params = "sentitems";
		$response = $this->post($this->getURL().'sentitems.py',$params);
		return $response;
	}
	public function getErrors()
	{
		$params = "errors";
		$response = $this->post($this->getURL().'errors.py',$params);
		return $response;
	}
	public function getCommands()
	{
		$params = "commands";
		$response = $this->post($this->getURL().'commands.py',$params);
		return $response;
	}
	public function getComments()
	{
		$params = "comments";
		$response = $this->post($this->getURL().'comments.py',$params);
		return $response;
	}

}

