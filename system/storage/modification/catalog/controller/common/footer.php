<?php
class ControllerCommonFooter extends Controller {
	public function index() {

				// BuyOneClick
					$this->load->model('setting/setting');
					$current_language_id = $this->config->get('config_language_id');
					$data['buyoneclick_success_field'] = htmlspecialchars_decode($this->config->get('buyoneclick_success_field_'.$current_language_id));
					$data['buyoneclick_status'] = $this->config->get('buyoneclick_status');
					$data['buyoneclick_status_category'] = $this->config->get('buyoneclick_status_category');
					$data['buyoneclick_field1_status'] = $this->config->get('buyoneclick_field1_status');
					$data['buyoneclick_field1_required'] = $this->config->get('buyoneclick_field1_required');
					$data['buyoneclick_field2_status'] = $this->config->get('buyoneclick_field2_status');
					$data['buyoneclick_field2_required'] = $this->config->get('buyoneclick_field2_required');
					$data['buyoneclick_field3_status'] = $this->config->get('buyoneclick_field3_status');
					$data['buyoneclick_field3_required'] = $this->config->get('buyoneclick_field3_required');
					$data['buyoneclick_field4_status'] = $this->config->get('buyoneclick_field4_status');
					$data['buyoneclick_field4_required'] = $this->config->get('buyoneclick_field4_required');
					$data['buyoneclick_validation_status'] = $this->config->get('buyoneclick_validation_status');
					$data['buyoneclick_validation_type'] = $this->config->get('buyoneclick_validation_type');

					$data['buyoneclick_admin_email'] = $this->config->get('config_email');

					$this->load->language('extension/module/buyoneclick');
					$data['buyoneclick_title'] = $this->language->get('buyoneclick_title');
					$data['buyoneclick_button'] = $this->language->get('buyoneclick_button');
					if ($data['buyoneclick_success_field'] == '') {
						$data['buyoneclick_success_field'] = $this->language->get('buyoneclick_success');
					}
					$data['buyoneclick_field1_title'] = $this->language->get('buyoneclick_field1_title');
					$data['buyoneclick_field2_title'] = $this->language->get('buyoneclick_field2_title');
					$data['buyoneclick_field3_title'] = $this->language->get('buyoneclick_field3_title');
					$data['buyoneclick_field4_title'] = $this->language->get('buyoneclick_field4_title');
					$data['buyoneclick_button_order'] = $this->language->get('buyoneclick_button_order');
					$data['buyoneclick_required_text'] = $this->language->get('buyoneclick_required_text');
					$data['buyoneclick_error_required'] = $this->language->get('buyoneclick_error_required');
					$data['buyoneclick_error_sending'] = $this->language->get('buyoneclick_error_sending');

					$data['buyoneclick_agree_status'] = $this->config->get('buyoneclick_agree_status');
					if ($this->config->get('buyoneclick_agree_status')) {
						$this->load->model('catalog/information');
						$information_info = $this->model_catalog_information->getInformation($this->config->get('buyoneclick_agree_status'));
						if ($information_info) {
							$data['buyoneclick_text_agree'] = sprintf($this->language->get('buyoneclick_text_agree'), $this->url->link('information/information/agree', 'information_id=' . $this->config->get('buyoneclick_agree_status'), 'SSL'), $information_info['title'], $information_info['title']);
						} else {
							$data['buyoneclick_text_agree'] = '';
						}
					} else {
						$data['buyoneclick_text_agree'] = '';
					}
				// BuyOneClickEnd
            
		$this->load->language('common/footer');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['telephone'] = $this->config->get('config_telephone');
		       $data['address'] = $this->config->get('config_address');

		$this->load->model('catalog/information');
		$this->load->model('catalog/category');
		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/account', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);

		$data['powered'] = sprintf($this->language->get('text_powered'),date('Y', time()), $this->config->get('config_name'));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('common/footer', $data);
	}
}
