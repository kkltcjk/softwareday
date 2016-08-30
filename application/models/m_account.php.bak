<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class m_account extends CI_Model {

    

    function __construct()
    {
        parent::__construct();
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