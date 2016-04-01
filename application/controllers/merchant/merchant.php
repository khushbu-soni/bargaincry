<?php if (! defined('BASEPATH')) exit('No direct script access allowed');
/**
* @author David Adamo Jr.
*/
class Merchant extends CI_Controller {
	public $data;

	public function __construct()
	{
		parent::__construct();
		$this->data['dependencies'] = $this->load->view('bargain/merchant/merchant-common/dependencies', '', TRUE);
		$this->data['header'] = $this->load->view('bargain/merchant/merchant-common/header', '', TRUE);
		$this->data['footer'] = $this->load->view('bargain/merchant/merchant-common/footer_includes', '', TRUE);
		$this->data['head'] = $this->load->view('bargain/merchant/merchant-common/head', '', TRUE);
		$this->load->model('merchant_model', 'merchant');
	}

	public function index()
	{
		
	}

	public function login()
	{
			

			$username=$_GET['username'];
		
			$password=$_GET['password'];

		$data = $this->merchant->check_merchant($username,$password);
		// echo $this->db->last_query();
		// print_r($data);
		if ($data){

			$this->session->set_userdata('name', $data->name);
			$this->session->set_userdata('username', $data->username);
			$this->session->set_userdata('merchant_id', $data->id);
				
			redirect('merchant/merchant');

		} else {
			// echo '0';
			redirect('merchant/merchant/login');
			// $this->load->view('welcome',$this->data);
			// $this->session->set_flashdata('successmsg', "Invald Username Password");
			// redirect('admin');

			// redirect('welcome');
		}
	}

	public function logout(){
		$this->session->unset_userdata('username');
		$this->session->sess_destroy();
		redirect('admin');
	}
	
}