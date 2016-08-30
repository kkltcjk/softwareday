<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Account extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        
        $this->load->model('m_articles');
        $this->load->model('m_article_type');
        $this->load->model('m_account');
        $this->load->model('m_account_revenue');

        $this->load->library('l_account');
    }

    public function my_account_info($app_id = 2)
    {
        TM_auth_save_user_openid_to_session('userinfo',$app_id);
        
        $data['htmldescription'] = '账户信息';
        $data['htmltitle'] = '账户信息';

        $tmp = $this->m_account->query_user_info($this->session->userdata('user_openid'));

        if(!$tmp['sex']) //没有用户完整信息
        {
            TM_load_login_view();
        }   

        // print_r($tmp);

        $data['userinfo_chk'] = false;
        $pay_userinfo_chk = $tmp['cellphone_chk']&&$tmp['pay_password'];
        if($pay_userinfo_chk)
        {
            $data['userinfo_chk'] = true;
            
            $data['user_password_first'] = substr($tmp['pay_password'],0,1);
            $data['user_password_last'] = substr($tmp['pay_password'], strlen($tmp['pay_password'])-1,1);
        }
        
        $data['user_info'] = $tmp;

        TM_load_view('account/v_account_info',$data);
    }

    

    public function add_user_pay_info($app_id = 2)  //填写或修改用户账户支付信息  type= view/new/modify_pay_password
    {
        TM_auth_save_user_openid_to_session('user_info',$app_id);

        $user_info  = $this->m_account->query_user_info($this->session->userdata('user_openid'));

        $data['user_info'] = $user_info;
        $data['htmldescription'] = '填写账户信息';
        $data['htmltitle'] = '填写账户信息';

        TM_load_view('account/v_account_input_userinfo',$data);
    }

    public function sms_code_chk_ajax()
    {
        // $user_id = $this->input->post('u_id');
        $sms_code = $this->input->post('s_code');
        // $user_openid = $this->input->post('u_openid');
        $user_openid = $this->session->userdata('user_openid');

        $sms_code_db = $this->m_account->query_user_info($user_openid)['cellphone_chk_code'];
        if($sms_code_db == $sms_code)
        {
            $result['success'] = true;
        }
        else
        {
            $result['success'] = false;
        }

        echo json_encode($result);
        // echo 'user '.$user_id.' '.$sms_code;
    }

    public function pay_password_chk_ajax()
    {
        $pay_password = $this->input->post('p_password');
        $user_openid = $this->session->userdata('user_openid');

        $pay_password_db = $this->m_account->query_user_info($user_openid)['pay_password'];

        if($pay_password_db == $pay_password)
        {
            $result['success'] = true;
        }
        else
        {
            $result['success'] = false;
        }

        echo json_encode($result);
    }

    public function user_cellphone_modify()
    {
        TM_auth_save_user_openid_to_session('userinfo',$app_id = 2);

        $new_cellphone = $this->input->post('cellphone');

        if($new_cellphone == '')
        {
            
            TM_load_view('account/v_account_cellphone');
        }
        else
        {
            $this->m_account->update_user_cellphone($this->session->userdata('user_openid'), $new_cellphone);

            $data['rst'] = true;
            $data['rst_info'] = '信息更新成功';
            TM_load_view('account/v_account_pay_info_rst',$data);
        }
    }

    public function user_pay_password_modify()
    {
        TM_auth_save_user_openid_to_session('userinfo',$app_id = 2);

        $new_pay_password = $this->input->post('pay_password');    
        
        if($new_pay_password == '')
        {
            $user_info  = $this->m_account->query_user_info($this->session->userdata('user_openid'));
            $data['user_info'] = $user_info;
            TM_load_view('account/v_account_pay_password',$data);
        }   
        else
        {
            $this->m_account->update_user_pay_password($this->session->userdata('user_openid'), $new_pay_password);

            $data['rst'] = true;
            $data['rst_info'] = '信息更新成功';
            TM_load_view('account/v_account_pay_info_rst',$data);
        } 
    }

    public function user_total_info_update()
    {
        $user_info_array = $this->input->post();
        $rst = $this->m_account->update_user_pay_info($user_info_array,$user_info_array['user_openid']);
        if($rst)
        {
            $data['rst'] = true;
            $data['rst_info'] = '账户信息更新成功';
        }
        else
        {
            $data['rst'] = false;
            $data['rst_info'] = '账户信息更新失败';
        }
        
        TM_load_view('account/v_account_pay_info_rst',$data);
    }

    public function wx_user_account_info_update()
    {
        // TM_auth_save_user_openid_to_session('snsapi_userinfo');

        $data['htmldescription'] = '用户登录';
        $data['htmltitle'] = '账户信息';

        if($_GET['code']&&($_GET['state']=='userinfo'))
        {
            $user_info = TM_auth_get_web_userinfo('wx_url','auth_user_base_info',2,$_GET['code'],$_GET['state']);
            $this->m_account->update_user_info($user_info,$this->session->userdata('user_openid'));

            $tmp = $this->m_account->query_user_info($this->session->userdata('user_openid'));

            if($tmp['sex'])
            {
                $this->my_account_info();
            }
            else
            {
                echo 'User Account Info Update Fail';
                die();
            }
        }
        else
        {
            echo 'Err Code or State NULL';
            die();
        }
    }

    public function my_account_revenue()
    {
        TM_auth_save_user_openid_to_session('userinfo',$app_id = 2);

        $data['htmldescription'] = '登录';
        $data['htmltitle'] = '收入详情';
        $tmp = $this->m_account->query_user_info($this->session->userdata('user_openid'));
        $data['user_total_amount'] = $tmp['amount'];
        $data['user_revenue_record_array'] = $this->m_account_revenue->query_user_revenue_record($this->session->userdata('user_openid'));

        TM_load_view('account/v_account_revenue',$data);

    }

   
}
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */