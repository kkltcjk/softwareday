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

//`id`, `user_openid`, `appid`, `user_unionid`, `wx_nickname`, `sex`, `province`, `city`, `country`, `headimgurl`, `privilege`, `language`, `last_visit_time`, `latitude`, `longitude`, `precision`, `location_time`, `amount`, `current_amount`, `cellphone`, `cellphone_chk`, `reg_time`, `alipay_username`, `pay_password`, `cellphone_chk_time`, `cellphone_chk_code`, `score`, `answered`, `is_gift`
	// public function add_user($openid)
	// {
	// 	$data = array(
 //           'id' => 1,
 //           'user_openid' => $openid,
 //           'appid' => 10,
 //           'user_unionid' => "lucky",
 //           'wx_nickname' => "lucky",
 //           'sex' => 0,
 //           'province' => "Shanghai",
 //           'city' => "Shanghai",
 //           'country' => "China",
 //           'headimgurl' => "lucky.com",
 //           'privilege' => "lucky",
 //           'language' => "Chinese",
 //           'last_visit_time' => "0000-00-00 00:00:00",
 //           'latitude' => 30.2,
 //           'longitude' => 30.2,
 //           'precision' => 30.2,
 //           'location_time' => "2016-08-27 00:00:00",
 //           'amount' => 0,
 //           'current_amount' => 0,
 //           'cellphone' => "18888888888",
 //           'cellphone_chk' => 0,
 //           'reg_time' => "2016-08-27 00:00:00",
 //           'alipay_username' => "unknown",
 //           'pay_password' => "unknown",
 //           'cellphone_chk_time' => "2016-08-27 00:00:00",
 //           'cellphone_chk_code' => 1,
 //           'score' => 0,
 //           'answered' => 0,
 //           'is_gift' => 0
 //        );

 //        $this->db->insert('tbl_wx_account', $data);
        
	// }

	public function index()
	{
		//$site_url = site_url();
		$site_url = "http://rjr.tuiunion.com/"; 
		$openid = $this->session->userdata('user_openid');
		
		if($openid)
		{
			//$this->m_onlinetest->recordscore($openid, 1, 21);
			//$this->m_onlinetest->add_user($openid);
			//log_message(error, "already get openid, openid is: ".$openid);
			redirect($site_url."onlinetest/test?openid=".$openid);
			//$this->add_user($openid);
			//$this->m_onlinetest->add_user($openid);
			
			
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
	            		//$this->add_user($openid); 
	            		$this->m_onlinetest->add_user($openid);
	            		//$this->m_onlinetest->recordscore($openid, 1, 21);
						redirect($site_url."onlinetest/test?openid=".$openid);
						log_message(error, "openid is: ".$openid);
					}
				}
				else
					log_message(error, "request failed");
			}
			else
			{
				//$redirect_uri = urlencode((current_url());
				$code_url = self::API_CODE_GET."appid=".self::APPID."&redirect_uri="."http%3A%2F%2Frjr.tuiunion.com%2Fwxoauth%2Findex"."&response_type=code&scope=".self::SCOPE."&state=1#wechat_redirect";

				redirect($code_url);
				//redirect("http://www.baidu.com/");
			}
		}

	}
	
	public function loadtest()
	{
		$site_url = site_url();
		//$site_url = "http://rjr.tuiunion.com/"; 
		//$openid = $this->session->userdata('user_openid');
		
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
			$openid = $this->input->get('openid');

			if($openid)
			{

	            		$this->session->set_userdata('user_openid', $openid); 
	            		$this->m_onlinetest->add_user($openid);
						redirect($site_url."onlinetest/test?openid=".$openid);
						

			}
			else
			{
				echo "error: no openid";
			}
		}

	}
}
