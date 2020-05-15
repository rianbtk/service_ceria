<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller']            = 'C__front';
//Frontend
$route['shop']                     = 'C__front/index';
$route['shop/(:any)'] 				= 'C__front/index/$1';
$route['viewcart']                 = 'C__front/cart/';
$route['mycategory/(:any)'] 		= 'C__front/category/$1';
$route['mycategory/(:any)/(:any)'] = 'C__front/category/$1/(:any)';
$route['product-details/(:any)'] 	= 'C__front/details/$1';
$route['auth']                     = 'C__front/login';
$route['process']                  = 'C__front/process';
$route['cost']                     = 'C__front/cost';
$route['costfirst']                = 'C__front/costfirst';
$route['getcity']                  = 'C__front/getcity';
$route['getcityfirst']             = 'C__front/getcityfirst';
$route['checkout']                 = 'C__front/checkout';
$route['total']                    = 'C__front/total';
$route['search']                   = 'C__front/search';
$route['verifCart']                = 'C__front/verifCart';
$route['unsubcribe/(:any)']		= 'C__front/unsubcribe/$1';
$route['tocart']                   = 'C__fronts/tocart';
$route['removecart/(:any)'] 		= 'C__fronts/removecart/$1';
$route['nullcart']                 = 'C__fronts/deletecart';
$route['refreshCart']              = 'C__fronts/refreshCart';
$route['refreshCartKecil']         = 'C__fronts/refreshCartKecil';
$route['refreshRealCart']          = 'C__fronts/refreshRealCart';
$route['fixed']                    = 'C__order/fixed';
$route['fixedNo']                  = 'C__order/fixedNo';
$route['fixTrans']                 = 'C__fronts/fixTrans';
$route['order']                    = 'C__fronts/order';
$route['getOrder']                 = 'C__fronts/getOrder';
$route['getValid']                 = 'C__fronts/getValid';
$route['getValidEdit']             = 'C__fronts/getValidEdit';
$route['uploadFix']                = 'C__fronts/uploadFix';
$route['uploadFixEdit']            = 'C__fronts/uploadFixEdit';
$route['fix/(:any)'] 				= 'C__fronts/fix/$1';
//Frontened Page
$route['howtobuy']                 = 'C__frontPage/howtobuy';
$route['testimony']                = 'C__frontPage/testimony';
$route['moreTestimony']            = 'C__frontPage/moreTestimony';
$route['submitTestimony']          = 'C__frontPage/submitTestimony';
$route['aboutus']                  = 'C__frontPage/about';
$route['pricelist']                = 'C__frontPage/pricelist/';
$route['pricelist/(:any)'] 		= 'C__frontPage/pricelist/$1';
$route['ongkir']                   = 'C__frontPage/ongkir';
//Backend
//Dashboard
$route['myshop']                   = 'C__admin';
$route['out']                      = 'C__admin/out';
$route['modal_user']               = 'C__admin/modal_user';
$route['update_account']           = 'C__admin/update_account';
//Kategori
$route['category']                 = 'C__category';
$route['update_state']             = 'C__category/update_state';
$route['add_category']             = 'C__category/add';
$route['view_update_category']     = 'C__category/view_update';
$route['update_category/(:any)'] 	= 'C__category/update/$1';
//Produk
$route['product']                  = 'C__product';
$route['product/(:num)'] 			= 'C__product/index/$1';
$route['filter_product']           = 'C__product/filter';
$route['filter_product/(:num)'] 	= 'C__product/filter/$1';
$route['update_state_product']     = 'C__product/update_state';
$route['add_product']              = 'C__product/add';
$route['view_update_product']      = 'C__product/view_update';
$route['view_detail_product']      = 'C__product/view_detail';
$route['update_product/(:any)'] 	= 'C__product/update/$1';
$route['upload_product/(:any)'] 	= 'C__product/upload/$1';
$route['picture_product/(:any)'] 	= 'C__product/picture/$1';
$route['delete_picture']           = 'C__product/delete_picture';
$route['delete_image_product']     = 'C__product/delete_image';
//Payment
$route['pay']                      = 'C__payment';
$route['update_state_pay']         = 'C__payment/update_state';
$route['add_pay']                  = 'C__payment/add';
$route['view_update_pay']          = 'C__payment/view_update';
$route['update_pay/(:any)'] 		= 'C__payment/update/$1';
//Bank
$route['bank']                     = 'C__bank';
$route['update_state_bank']        = 'C__bank/update_state';
$route['add_bank']                 = 'C__bank/add';
$route['view_update_bank']         = 'C__bank/view_update';
$route['update_bank/(:any)'] 		= 'C__bank/update/$1';
//User
$route['user']                     = 'C__user';
$route['update_state_user']        = 'C__user/update_state';
$route['add_user']                 = 'C__user/add';
$route['view_update_user']         = 'C__user/view_update';
$route['update_user/(:any)'] 		= 'C__user/update/$1';
//Setting
$route['setting']                  = 'C__setting';
$route['edit_setting']             = 'C__setting/edit';
$route['edit_setting_tambahan']    = 'C__setting/edit_tambahan';
$route['update_setting']           = 'C__setting/update';
$route['update_setting_tambahan']  = 'C__setting/update_tambahan';
$route['delete_options']  			= 'C__setting/delete_options';
//Skin
$route['skin']                     = 'C__setting/skin';
$route['update_skin']              = 'C__setting/skin_update';
//Halaman
$route['page']                     = 'C__page';
$route['page/(:any)'] 				= 'C__page/index/$1';
$route['update_about']             = 'C__page/updateabout';
$route['update_buy']               = 'C__page/updatebuy';
//Slider
$route['slider']                   = 'C__slider';
$route['add_slider']               = 'C__slider/add';
$route['delete_slider']            = 'C__slider/delete';
//Transaksi
$route['transaction']              = 'C__transaction/index';
$route['transaction/(:any)'] 		= 'C__transaction/index/$1';
$route['detail_transaction/(:any)']= 'C__transaction/view_detail_transaction/$1';
$route['update_state_transaction'] = 'C__transaction/update_state';
$route['filter_transaction']       = 'C__transaction/filter_transaction';
$route['filter_transaction/(:any)']= 'C__transaction/filter_transaction/$1';
$route['send']                     = 'C__transaction/send';
$route['print/(:any)'] 			= 'C__transaction/print_transaction/$1';
//Testimoni
$route['testimoni']                = 'C__testimoni';
$route['testimoni/(:any)'] 	  	= 'C__testimoni/index/$1';
$route['update_state_testimoni']   = 'C__testimoni/update_state';
$route['add_testimoni']            = 'C__testimoni/add';
$route['view_update_testimoni']    = 'C__testimoni/view_update';
$route['view_detail_testimoni']    = 'C__testimoni/view_detail';
$route['update_testimoni/(:any)'] 	= 'C__testimoni/update/$1';

//Not Found
$route['404_override'] = 'C__front/notfound';
$route['translate_uri_dashes'] = FALSE;
