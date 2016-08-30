<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class m_onlinetest extends CI_Model {

    

    function __construct()
    {
        parent::__construct();
    }
    
    public function getradonquestion($openid)
    {
        return $this->_getinrandonquestion($openid);
    }

    public function recordscore($openid, $isright, $questionid)
    {
        $data = array(
           'user_id' => $openid ,
           'exercise_id' => $questionid ,
           'score' => $isright
        );

        $this->db->insert('tbl_user_score', $data); 
        $this->_counttotalscore($openid);
    }

    public function getgift($openid)
    {
        $data = array(
            'is_gift' => 1
        );
        // echo $user_openid;
        $this->db->where('user_openid',$openid);
        $this->db->update('tbl_wx_account',$data);
    }

    function _counttotalscore($openid)
    {
        $sql = "select * from tbl_user_score where user_id = '".$openid."' and score <> 0";
        $query = $this->db->query($sql);
        $total_score = $query->num_rows();

        $sql2 = "select * from tbl_user_score where user_id = '".$openid."'";
        $query2 = $this->db->query($sql2);
        $total_answered = $query2->num_rows();

        $data = array(
                'score' => $total_score,
                'answered' => $total_answered
            );
        // echo $user_openid;
        $this->db->where('user_openid',$openid);
        $this->db->update('tbl_wx_account',$data);
    }

    function _getinrandonquestion($openid)
    {
        $max_question_id = 60;
        $id = rand(1,$max_question_id);
        $sql = "select * from tbl_exercise where id = ".$id;
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0)
        {
            return $query->row_array();
        }
        else
        {
            return 0;
        }
    }

    public function add_user($openid)
    {
	$data = array(
//           'id' => 1,
           'user_openid' => $openid,
           'appid' => 10,
           'user_unionid' => "lucky",
           'wx_nickname' => "lucky",
           'sex' => 0,
           'province' => "Shanghai",
           'city' => "Shanghai",
           'country' => "china",
           'headimgurl' => "lucky.com",
           'privilege' => "lucky",
           'language' => "chinese",
           'last_visit_time' => "0000-00-00 00:00:00",
           'latitude' => 30.2,
           'longitude' => 30.2,
           'precision' => 30.2,
           'location_time' => "2016-08-27 00:00:00",
           'amount' => 0,
           'current_amount' => 0,
           'cellphone' => "18888888888",
           'cellphone_chk' => 0,
           'reg_time' => "2016-08-27 00:00:00",
           'alipay_username' => "unknown",
           'pay_password' => "unknown",
           'cellphone_chk_time' => "2016-08-27 00:00:00",
           'cellphone_chk_code' => 1,
           'score' => 0,
           'answered' => 0,
           'is_gift' => 0
        );

        $this->db->insert('tbl_wx_account', $data);
        
    }
}
?>
