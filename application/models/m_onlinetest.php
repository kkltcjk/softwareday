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

        $sql = "select * from tbl_user_score where user_id = '".$openid."' and exercise_id = '".$questionid."'";
        $query = $this->db->query($sql);
	if($query->num_rows() == 0)
	{
        	$this->db->insert('tbl_user_score', $data); 
        	//$this->_counttotalscore($openid);
		return 'ok';
	}
	return "answered";
    }

    public function getgift($openid, $gift=1)
    {
        $data = array(
            'is_gift' => $gift
        );
        // echo $user_openid;
        $this->db->where('user_openid',$openid);
        $this->db->update('tbl_wx_account',$data);
    }

    function _counttotalscore($openid)
    {
        $sql = "select * from tbl_user_score where user_id = '".$openid."'";
        $query = $this->db->query($sql);
        $total_answered = $query->num_rows();

	$total_score = 0;
        foreach ($query->result_array() as $row) 
        {
            if($row['score'] == 1)
	    {
		$total_score++;
            }
        }

        $data = array(
                'score' => $total_score,
                'answered' => $total_answered
            );

        $this->db->where('user_openid',$openid);
        $this->db->update('tbl_wx_account',$data);
    }

    function _getinrandonquestion($openid)
    {
        $max_question_id = 75;
        $id = $this->_getnorepeatedrandom($max_question_id, $openid);
        // $ran_arr = range(1, $max_question_id);
        // $ran_index = 0;
        // if ( $this->session->userdata('random_array') && $this->session->userdata('random_index'))
        // {
        //     $ran_arr = $this->session->userdata('random_array');
        //     $ran_index = $this->session->userdata('random_index');
        //     log_message(error, "array is: ".$this->session->userdata('random_array'));
        //     log_message(error, "index is: ".$this->session->userdata('random_index'));
        // }
        // else
        // {
        //     shuffle($ran_arr);
        //     $this->session->set_userdata('random_array', $ran_arr);
        //     $this->session->set_userdata('random_index', $ran_index);

        // }

        // if ( $this->session->userdata('random_index') < $max_question_id )
        // {
        //      $index = $this->session->userdata('random_index');
        //      $index ++;
        //      $this->session->set_userdata('random_index', $index); 
        // }

        // $id = $ran_arr[$ran_index];
        
        //$id = rand(1,$max_question_id);
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

    function _getnorepeatedrandom($max_num, $openid)
    {
        $id = rand(1, $max_num);
        // return $id;
        $sql = "select exercise_id from tbl_user_score where user_id = '".$openid."'";
        $query = $this->db->query($sql);
        
        if ($query->num_rows() == 0 || $query->num_rows() >= $max_num)
        {
            //log_message(error, "id is: ".(string)$id);
            return $id;

        }
        else
        {
            $answered_array = array();
            // $sql = "select exercise_id from tbl_user_score where user_id=".$openid;
            // $query = $this->db->query($sql);
            //$result = json_decode($query->result(), true);
            //$answered_array[] = $query->result_array();
            
            foreach ($query->result_array() as $row) 
            {
                 $answered_array[] = $row['exercise_id'];
            }

            while (in_array($id, $answered_array))
            {
                if ($id < $max_num )
                {
                    $id++;
                }
                else
                {
                    $id = 1;
                }
            }
            //log_message(error, "id is: ".(string)$id);
            return $id;
        }
    }
}
?>
