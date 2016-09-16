<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class m_account extends CI_Model {

    

    function __construct()
    {
        parent::__construct();
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

        //$this->db->insert('tbl_wx_account', $data);
	//need set unique key for user_openid when create table
	$sql = $this->db->insert_string('tbl_wx_account', $data);
        $sql = str_replace('INSERT INTO', 'INSERT IGNORE INTO', $sql); 
	$this->db->query($sql);
    }
    
    public function query_user_info($user_openid)
    {
        if($user_openid!='')
        {
            $sql ="select * from `tbl_wx_account` where `user_openid` ='".$user_openid."'";
            $query = $this->db->query($sql);
            if($query->num_rows())
            {
                return $query->row_array();
            }
            else
            {
                return 0;
            }    
        }
        else
        {
            return 0;
        }
    }

    public function query_user_answer_info_list($open_id)
    {
        $sql ="select * from `tbl_wx_account` order by score desc, answered";
        $query = $this->db->query($sql);
        $total_count = $query->num_rows();
        $result = $query->result_array();
        for ($i = 0; $i < $total_count; $i++)
        {
            if ($result[$i]['user_openid'] == $open_id)
            {
                break;
            }
        }
        if ($i == $total_count)
        {
            return array('total_count'=>$total_count, 'my_pos'=>$total_count+1);
        }
        else
        {
            return array('total_count'=>$total_count, 'my_pos' => $i + 1);
        }
        

    }

    

}
