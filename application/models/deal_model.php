<?php
class deal_model extends CI_Model{
    //__construct
    public $data;
    //Constructor of abstract_userlogin_model
    public function __construct() {
       // $this->load->database();
    }

    function get(){
         $currency = $this->db->query("select deals.*,state.name as state_name,city.name as city_name,town.name as town_name, dealtypes.name as dealtype,merchants.name as merchant_name, country.name as country_name from deals join merchants on merchants.id = deals.merchant_id join country on country.id =deals.country_id join dealtypes on dealtypes.id=deals.dealtype_id 
            join  state on state.id = deals.state_id join city on city.id=deals.city_id join town on town.id=deals.town_id")->result();


        return $currency;
    }

     function get_images_by_deal($deal_id){
         $currency = $this->db->query("select * from images where deal_id=$deal_id")->result();


        return $currency;
    }
function getImageName($id){
         $currency = $this->db->query("select name from images where id=$id")->row_array();
        return $currency;
    }

   

    function add($data){
        
        // $data=array('name'=>$name,'parent_id'=>$parent_id);
        // $search_string=$data['']
        $this->db->insert('deals', $data); 

         // $currency = $this->db->query("select * from category")->result_array();
        // return $currency;
    }

    function addImage($data){
        // $data=array('name'=>$name,'parent_id'=>$parent_id);

        $this->db->insert('images', $data); 
         // $currency = $this->db->query("select * from category")->result_array();
        // return $currency;
    }
    function get_by_id($id){
        // $data=array('id'=>$id);

         $currency = $this->db->query("select * from deals where id=$id")->row_array();
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
        return $this->db->update('deals', $data);
    }

     function delete($id){
       // $data = array('id'=>$id);
         $this->db->delete('deals', array('id' => $id));
        if ($this->db->affected_rows() > 0)
            return TRUE;
        return FALSE;   
    }

    function deleteImage($id){
       // $data = array('id'=>$id);
         $this->db->delete('images', array('id' => $id));
        if ($this->db->affected_rows() > 0)
            return TRUE;
        return FALSE;   
    }

    function markEnable($id){
        $currency = $this->db->query("update deals set status=1 where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

    function markFeatured($id){
        $currency = $this->db->query("update deals set is_featured=1 where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }

    function unmarkFeatured($id){
        $currency = $this->db->query("update deals set is_featured=0 where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }
    function markDisable($id){
        $currency = $this->db->query("update deals set status=0 where id=$id")->row_array();
         // $currency = $this->db->query("select * from category")->result_array();
        return $currency;
    }
    }


