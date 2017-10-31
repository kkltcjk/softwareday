<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Wxoauth extends CI_Controller {
	const API_CODE_GET = 'https://open.weixin.qq.com/connect/oauth2/authorize?';
	const API_TOKEN_GET = 'https://api.weixin.qq.com/sns/oauth2/access_token?';
	const APPID = 'wx4bc69490cc033d2e';
	const SECRET = 'e99bf5d61c022b1507f601871010e7e7';
	const SCOPE = 'snsapi_base';

	function __construct()
	{
		parent::__construct();
        $this->load->helper('url');
        $this->load->model('m_onlinetest');
        $this->load->model('m_account');
        $this->load->library('form_validation');
	}

	public function index()
	{
		//$site_url = site_url();
		$site_url = "http://lru64.cn/"; 
		$openid = $this->session->userdata('user_openid');
		
		if($openid)
		{
			redirect($site_url."index.php/onlinetest/test?openid=".$openid);
			// redirect($site_url);
		}
		else
		{
			$code = $this->input->get('code');

			if($code)
			{
				$token_url = self::API_TOKEN_GET."appid=".self::APPID."&secret=".self::SECRET."&code=".$code."&grant_type=authorization_code";
				//echo $token_url;
				$token = file_get_contents($token_url);
				//$token = $token_url;
				echo $token;
				if($token)
				{
					$token = json_decode($token, true);
					if(!is_array($token) || isset($token['errcode']))
						log_message(error, "request failed: ".$token['errmsg']);
					else
					{	
						$openid = $token['openid'];
	            				$this->session->set_userdata('user_openid', $openid);
	            				$this->m_account->add_user($openid);
						redirect($site_url."index.php/onlinetest/test?openid=".$openid);
						// redirect($site_url);
					}
				}
				else
					log_message(error, "request failed");
			}
			else
			{
				$code_url = self::API_CODE_GET."appid=".self::APPID."&redirect_uri="."http%3A%2F%2Flru64.cn%2Findex%2Ephp%2Fwxoauth%2Findex"."&response_type=code&scope=".self::SCOPE."&state=1#wechat_redirect";

				redirect($code_url);
			}
		}

	}
	
	public function loadtest()
	{
		$site_url = site_url();
		//$site_url = "http://rjr.tuiunion.com/"; 
		$openid = $this->session->userdata('user_openid');
		
		//if($openid)
		{
			//$this->m_onlinetest->recordscore($openid, 1, 21);
			//$this->m_onlinetest->add_user($openid);
			//log_message(error, "already get openid, openid is: ".$openid);
			//redirect($site_url."onlinetest/test?openid=".$openid);
			//$this->add_user($openid);
			//$this->m_onlinetest->add_user($openid);
			
			
		}
		//else
		{
			//$openid = $this->input->get('openid');

			if($openid)
			{

	            		//$this->session->set_userdata('user_openid', $openid); 
	            		$this->m_account->add_user($openid);
	            		//$this->m_onlinetest->getgift($openid, 0);
				redirect($site_url."onlinetest/test?openid=".$openid);
						

			}
			else
			{
				echo "error: no openid";
			}
		}

	}
}
