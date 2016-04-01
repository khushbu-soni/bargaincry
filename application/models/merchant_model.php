<?php
class merchant_model extends CI_Model{
    //__construct
    public $data;
    //Constructor of abstract_userlogin_model
    public function __construct() {
       // $this->load->database();
    }

    function get(){
         $currency = $this->db->query("select * from merchants")->result();

        return $currency;
    }

    function getActive(){
         $currency = $this->db->query("select * from merchants where status=1")->result();

        return $currency;
    }

    function get_name($id){
        // $data=array('id'=>$id);

         $currency = $this->db->query("select name from merchants where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

    function get_sub(){
         $currency = $this->db->query("select c.id,c.name as sub_category,sub_c.name as parent_category from category c  join category sub_c on c.parent_id=sub_c.id")->result();

        return $currency;
    }

    function add($data){
        // $data=array('name'=>$name,'parent_id'=>$parent_id);

        $this->db->insert('merchants', $data); 
         // $currency = $this->db->query("select * from category")->result_array();
        // return $currency;
    }
    function get_by_id($id){
        // $data=array('id'=>$id);

         $currency = $this->db->query("select * from merchants where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

    function get_by_name($name){
        // $data=array('id'=>$id);

         $currency = $this->db->query("select * from category where name='$name'")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }
     function edit($data,$id){
       // $data = array('id'=>$id);
       // $data = array('name'=>$name,'parent_id'=>$parent_id);
        $this->db->where('id',$id);
        return $this->db->update('merchants', $data);
    }

     function delete($id){
       // $data = array('id'=>$id);
         $this->db->delete('merchants', array('id' => $id));
        if ($this->db->affected_rows() > 0)
            return TRUE;
        return FALSE;   
    }

    function markEnable($id){
        $currency = $this->db->query("update merchants set status=1 where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }
    function markDisable($id){
        $currency = $this->db->query("update merchants set status=0 where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

    function check_merchant($username,$password){

     $query = $this->db->get_where('merchants', array(
                    'username' =>$username,
                    'password' =>$password,
                    'is_deleted'=>0,
                    'status'=>1,
                        )
                );

        if ($query->num_rows() > 0){
            //set necessary session variables
            $user = $query->row();
                
            // $this->session->set_userdata('merchant_id', $merchant->id);
            return $user;
    }else{
        return 0;
    }

    }
}


