<?php
class country_model extends CI_Model{
    //__construct
    public $data;
    //Constructor of abstract_userlogin_model
    public function __construct() {
       // $this->load->database();
    }

    function get(){
         $currency = $this->db->query("select * from country")->result();

        return $currency;
    }


    

    function add($data){
        // $data=array('name'=>$name);

        $this->db->insert('country', $data); 
         // $currency = $this->db->query("select * from category")->result_array();
        // return $currency;
    }

    function get_name($id){
        // $data=array('id'=>$id);

         $currency = $this->db->query("select name from country where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

    function get_by_id($id){
        // $data=array('id'=>$id);

         $currency = $this->db->query("select * from country where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

  
     function edit($data,$id){
       // $data = array('id'=>$id);
       // $data = array('name'=>$name,'parent_id'=>$parent_id);
        $this->db->where('id',$id);
        return $this->db->update('country', $data);
    }

     function delete($id){
       // $data = array('id'=>$id);
         $this->db->delete('country', array('id' => $id));
        if ($this->db->affected_rows() > 0)
            return TRUE;
        return FALSE;   
    }

    
    
    }


