<?php
class ControllerExtensionModuleFeaturedcarusel extends Controller {
	public function index($setting) {
		static $module = 0;
		$this->load->language('extension/module/featuredcarusel');
if ($setting['displaytitle'] == '1') {
$data['heading_title'] = $setting['name'];
} else {
	$data['heading_title'] = false;
}
$data['class'] = $setting['class'];
$data['items'] = $setting['items'];
$data['prodview'] = $setting['prodview'];
$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/featuredcarusel.css');
$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');


		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_more'] = $this->language->get('text_more');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();
		$products = '';
		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}
		
		if ($setting['tab'][0] == 1 && !empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);
		} else {
			if (!$setting['category']) {
				$setting['category'] = 0;
			}
			$filter_data = array(
				'sort'  => 'p.date_added',
				'order' => 'DESC',
				'start' => 0,
				'filter_category_id' => $setting['category'],
				'limit' => $setting['limit']
			);
			$products = $this->model_catalog_product->getProducts($filter_data);
		}

		if ($products) {
			foreach ($products as $product) {
				
				if ($setting['tab'][0] == 1 && !empty($setting['product'])) {
					$product_info = $this->model_catalog_product->getProduct($product);
				} else {
					$product_info = $product;
				}

				if ($product_info) {
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}
					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}

					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],
						'thumb'       => $image,
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'special'     => $special,
						'tax'         => $tax,
						'rating'      => $rating,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
					);
				}
			}
		}
$data['module'] = $module++;
		if ($data['products']) {
			return $this->load->view('extension/module/featuredcarusel', $data);
		}
	}
}