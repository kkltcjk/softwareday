<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Onlinetest extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('m_onlinetest');
        $this->load->model('m_account');
        $this->load->library('form_validation');
    }
    
    public function test()
    {
        $openid = $this->session->userdata('user_openid');
        //$openid = $this->input->get('openid');

        if ($openid)
        {
            $user = $this->m_account->query_user_info($openid);
            if ($user['is_gift'] || $user['answered'] >= 75)
            {
                $this->viewmyresult();
            }
            else
            {
		        $question = $this->m_onlinetest->getradonquestion($openid);
                $sess_answered = $this->m_account->query_user_info($openid);
                if ($question)
                {
            	    $question['openid'] = $openid;
                    $question['answered_num'] = $sess_answered['answered'];
                    $this->load->view('onlinetest/v_onlinetest', $question);
                }
                else
                {
                    show_404();
                }
            }
        }
        else
        {
        	show_error("Only works in wechat client", 403, "403 Forbidden");
        }
    }

    public function viewmyresult()
    {
        $openid = $this->session->userdata('user_openid');
        //$openid = $this->input->get('openid');
    	if ($openid)
    	{
            $this->m_onlinetest->_counttotalscore($openid);
            $user = $this->m_account->query_user_info($openid);
            $list_pos = $this->m_account->query_user_answer_info_list($openid);
            log_message("error", $user);
            $user['pos'] = $list_pos['my_pos'];
            if ($list_pos['my_pos'] > $list_pos['total_count'])
            {
               show_404();
               return; 
            }
            $user['pos_percent'] = (int)((($list_pos['total_count'] - $list_pos['my_pos'])/$list_pos['total_count'])*100);
            $user['openid'] = $openid;
            $this->load->view('onlinetest/v_result', $user);
    	}
    	else
    	{
             show_error("Only works in wechat client", 403, "403 Forbidden");
    	}
    }
    
    public function ajax_get_gift()
    {
        $this->form_validation->set_rules('openid', 'openid', 'required');

      
        $post_data = $this->input->post();
        //if ($this->form_validation->run())
        //{
        //$openid = $this->input->post('openid');
	$openid = $post_data['openid'];
        $this->m_onlinetest->getgift($openid);
        $result['success'] = 1;


        //}
        //else
        //{
        //    $result['success'] = 0;

        //}
        echo json_encode($result);
    }

    public function ajax_record_score()
    {
        $this->form_validation->set_rules('openid', 'Openid', 'trim|required|xss_clean');
        $this->form_validation->set_rules('isright', 'Isright', 'trim|required|xss_clean');
        $this->form_validation->set_rules('questionid', 'Questionid', 'trim|required|xss_clean');
      
	$post_data = $this->input->post();

        //if ($this->form_validation->run())
        //{

	    //log_message('error', 'result21');
            //$openid = $this->input->post('openid');
            //$isright =  $this->input->post('isright');
            //$questionid = $this->input->post('questionid');
        $openid = $post_data['openid'];
        $isright =  $post_data['isright'];
        $questionid = $post_data['questionid'];
        $ret = $this->m_onlinetest->recordscore($openid, $isright, $questionid);
        if($ret == "ok")
        {
            $result['success'] = 1;
        }
        else
        {
            $result['success'] = 2;
        }
	


        //}
       /* else
        {
	    log_message('error', 'result22');
            $result['success'] = 0;

        }*/
	//log_message('error', 'result3');
        echo json_encode($result);
	//log_message('debug', "$result['success']");

    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */



