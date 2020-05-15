<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C__tukang extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		get_breadcrumb();
		$this->load->model('M__app');
	}

	public function index($off=0)
	{
		$this->load->library('pagination');
		$jumlah=$this->M__app->getdata('tukang')->num_rows();
		$data['title']       ="TUkang";
		$data['active']      ="tukang";
		$data['active_open'] ="master";
		$data['all']         =$this->M__app->getdatapage_('tukang',$off)->result();
		$data['category']    =$this->M__app->gradeone('ahli','state',1)->result();
		$data['page']        =halaman($jumlah,'tukang',2,10);
		$data['off']         =$off;
		$data['content']     ="tukang/index.php";

		$this->breadcrumb->append_crumb('Produk', site_url('tukang'));

		$this->load->view('backend/template.php',$data);
	}

	public function filter($off=0)
	{
		$this->load->library('pagination');
		if ($this->input->post('search')==1)
		{
			$session=array(
				"tukang"    =>$this->input->post('tukang'),
				"ahli"      =>$this->input->post('ahli'),
				"contact" =>$this->input->post('nomor')
			);
			$this->session->set_userdata($session);
		}

		$jumlah=$this->M__app->getJumlahFilter()->num_rows();
		$data['title']       ="Filter | Produk";
		$data['active']      ="tukang";
		$data['active_open'] ="master";
		$data['all']         =$this->M__app->getDataFilter($off)->result();
		$data['category']    =$this->M__app->gradeone('category','state',1)->result();
		$data['page']        =halaman($jumlah,'filter_tukang',2,10);
		$data['off']         =$off;
		$data['jumlah']      =$jumlah;
		$data['content']     ="tukang/search.php";

		$this->breadcrumb->append_crumb('Produk', site_url('tukang'));
		$this->breadcrumb->append_crumb('Filter', site_url());

		if($jumlah==0)
		{
			$this->session->set_flashdata('error', 'Data tidak ditemukan!');
			redirect('tukang');
		}
		else
		{
			$this->load->view('backend/template.php',$data);
		}
	}

	public function add()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('tukang', 'tukang', 'trim|required|max_length[20]');
		$this->form_validation->set_rules('information', 'information', 'trim|required');
		$this->form_validation->set_rules('ahli', 'ahli', 'trim|required|max_length[100]');
		$repSlug=$this->input->post('contact');
		$slug=preg_replace('/[^a-zA-Z0-9]/','_',$repSlug);
		$slugNum=$this->M__app->gradeone('tukang','slug_tukang',$slug)->num_rows();
		if($slugNum>0)
		{
			$this->session->set_flashdata('error','masukan eahlian sesuai di bidangnya');
			redirect('tukang');
		}
		elseif ($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error',validation_errors());
			redirect('tukang');
		}
		else
		{
			$picture=compress_image('picture','Produk');
			$data=array(
				"name_tukang"        =>$this->input->post('tukang'),
				"information_tukang" =>nl2br(trim($this->input->post('information'))),
				"ahli_tukang"       =>str_replace('.', '', $this->input->post('price')),
				"weight_tukang"      =>$this->input->post('weight'),
				"category_tukang"    =>$this->input->post('category'),
				"image_tukang"       =>$picture,
			);

			$this->M__app->saved('tukang',$data);
			$this->session->set_flashdata('success','Data Produk <strong>'.$this->input->post('tukang').'</strong> Berhasil Di Simpan');
			redirect('tukang');
		}
	}

	public function view_update()
	{
		$id               =$this->input->post('id');
		$get              =$this->M__app->gradeone('tukang','id_tukang',$id)->row_array();
		$data['get']      =$get;
		$data['category'] =$this->M__app->gradeone('category','state',1)->result();

		$this->load->view('backend/tukang/edit.php', $data);
	}

	public function view_detail()
	{
		$id               =$this->input->post('id');
		$get              =$this->M__app->gradeone('tukang','id_tukang',$id)->row_array();
		$data['get']      =$get;
		$data['category'] =$this->M__app->gradeone('category','state',1)->result();

		$this->load->view('backend/tukang/detail.php', $data);
	}

	public function update($id)
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('tukang', 'tukang', 'trim|required|max_length[30]');
		$this->form_validation->set_rules('information', 'information', 'trim|required');
		$this->form_validation->set_rules('price', 'price', 'trim|required|max_length[50]');
		$this->form_validation->set_rules('weight', 'weight', 'trim|required|max_length[11]|numeric');
		$this->form_validation->set_rules('stock', 'stock', 'trim|required|max_length[5]|numeric');
		$this->form_validation->set_rules('category', 'category', 'trim|required|max_length[11]');
		$this->form_validation->set_rules('slug_edit', 'slug', 'trim|required');

		$repSlug=$this->input->post('slug_edit');
		$slug=preg_replace('/[^a-zA-Z0-9]/','_',$repSlug);
		$slugNum=$this->M__app->slugEdit($slug,$id)->num_rows();
		if($slugNum>0)
		{
			$this->session->set_flashdata('error','Nama slug sudah digunakan silahkan ganti slug anda dengan menambahkan angka atau kata lainnya!');
			redirect('tukang');
		}
		elseif ($this->form_validation->run() == FALSE)
		{
			$this->session->set_flashdata('error','Data Gagal Di Validasi, Silahkan Cek Data Lagi!');
			redirect('tukang');
		}
		else
		{
			$get=$this->M__app->gradeone('tukang','id_tukang',$id)->row_array();
			if($_FILES['picture']['name']=="")
			{
				$picture=$get['image_tukang'];
			}
			else
			{
				$picture=compress_image('picture','Produk');
				unlink('uploads/'.$get['image_tukang']);
			}

			$data=array(
				"name_tukang"        =>$this->input->post('tukang'),
				"information_tukang" =>nl2br(trim($this->input->post('information'))),
				"price_tukang"       =>str_replace('.', '', $this->input->post('price')),
				"weight_tukang"      =>$this->input->post('weight'),
				"category_tukang"    =>$this->input->post('category'),
				"image_tukang"       =>$picture,
				"image_tukang"       =>$picture,
				"discount_tukang"    =>str_replace('.', '', $this->input->post('discountEdit')),
				"slug_tukang"        =>$slug,
				"state_discount"      =>$this->input->post('stateDiscountEdit')?
										$this->input->post('stateDiscountEdit'):0,
			);
			$this->M__app->update('tukang',$data,'id_tukang',$id);
			$this->session->set_flashdata('success','Data Produk Berhasil Di Perbarui');
			redirect('tukang');
		}
	}

	public function update_state()
	{
		$total=$this->input->post('id');
		if($this->input->post('active'))
		{
			$state=1;
		}
		elseif($this->input->post('delete'))
		{
			for ($i=0; $i < count($total); $i++)
			{
				$tukang=$this->M__app->gradeone('tukang','id_tukang',$total[$i])->row_array();
				$image=$this->M__app->gradeone('image_tukang','id_tukang',$total[$i])->result();
				foreach ($image as $r)
				{
					$this->M__app->delete('image_tukang','id_image_tukang',$r->id_image_tukang);
					unlink('uploads/'.$r->image);
				}
				$this->M__app->delete('tukang','id_tukang',$total[$i]);
				unlink('uploads/'.$tukang['image_tukang']);
			}
		}
		else
		{
			$state=0;
		}

		if(!$this->input->post('delete'))
		{
			for ($i=0; $i < count($total); $i++)
			{
				$data=array(
					"state_tukang"=>$state,
				);
				$this->M__app->update('tukang',$data,'id_tukang',$total[$i]);
			}
		}

		$this->session->set_flashdata('success','Data Produk Berhasil Di Perbarui');
		redirect('tukang');
	}

	public function picture($id)
	{
		$get                 =$this->M__app->gradeone('tukang','id_tukang',$id)->row_array();
		$data['get']         =$get;
		$data['all']         =$this->M__app->gradeone('image_tukang','id_tukang',$id)->result();
		$data['title']       ="Detail Gambar Produk {$get['name_tukang']} | Produk";
		$data['active']      ="tukang";
		$data['active_open'] ="master";
		$data['content']     ="tukang/picture.php";

		$this->breadcrumb->append_crumb('Produk', site_url('tukang'));
		$this->breadcrumb->append_crumb('Galeri <b>'.$get['name_tukang'].'</b>', site_url());

		$this->load->view('backend/template.php', $data);
	}

	public function upload($id)
	{
		$image =compress_image('userfile','Pendukung');
		$token =$this->input->post('token_gambar');
		$data=array(
			"id_tukang" =>$id,
			"image"      =>$image,
			"token"      =>$token,
		);
		$this->M__app->saved('image_tukang',$data);
	}

	public function delete_picture()
	{
		$token =$this->input->post('token');
		$get   =$this->M__app->gradeone('image_tukang','token',$token);
		if($get->num_rows()>0)
		{
			$row =$get->row_array();
			unlink('uploads/'.$row['image']);
			$this->M__app->delete('image_tukang','token',$token);
		}
		echo "{}";
	}

	public function delete_image()
	{
		$total =$this->input->post('id');
		$id    =$this->input->post('id_tukang');

		for ($i=0; $i < count($total); $i++)
		{
			$get =$this->M__app->gradeone('image_tukang','id_image_tukang',$total[$i])->row_array();
			unlink('uploads/'.$get['image']);
			$this->M__app->delete('image_tukang','id_image_tukang',$total[$i]);
		}

		$this->session->set_flashdata('success','Data Gambar Pendukung Produk Berhasil Di Hapus');
		redirect('picture_tukang/'.$id);
	}
	
}

/* End of file  */
/* Location: ./application/controllers/ */
