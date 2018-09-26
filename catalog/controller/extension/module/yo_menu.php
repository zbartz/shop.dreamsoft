<?php
class ControllerExtensionModuleYoMenu extends Controller {
	public function index($setting) {
		static $module = 1;
		$this->load->language('extension/module/yo_menu');

		if (!isset($setting['yo_module']['store_id']) || !in_array($this->config->get('config_store_id'), $setting['yo_module']['store_id'])) {return;}

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (!isset($setting['yo_module']['all_customers'])) {
			if (!$this->customer->isLogged() || !isset($setting['yo_module']['customer_group_id']) || !in_array($this->config->get('config_customer_group_id'), $setting['yo_module']['customer_group_id'])) {
				return;
			}
		}

		if ($setting['yo_module']['cat_invert']) {
			if (!isset($setting['yo_module']['allcats']) && isset($this->request->get['path'])) {
				if (empty($setting['yo_module']['fcid']) || !in_array((int)end($parts), $setting['yo_module']['fcid'])) {return;}
			}
		} else {
			if (isset($this->request->get['path'])) {
				if (isset($setting['yo_module']['allcats']) || !empty($setting['yo_module']['fcid']) && in_array((int)end($parts), $setting['yo_module']['fcid'])) {return;}
			}
		}

		$data['box_class'] = !empty($setting['yo_module']['box_class']) ? $setting['yo_module']['box_class'] : 'panel panel-default';
		$data['title_class'] = !empty($setting['yo_module']['title_class']) ? $setting['yo_module']['title_class'] : 'panel-heading';
		$data['content_class'] = $setting['yo_module']['content_class'];
		$data['style_status'] = $setting['yo_module']['style_status'];
		$data['style'] = isset($setting['style']) ? html_entity_decode($setting['style']) : '';

		if ($data['style_status'] && $data['style']) {
			$style = fopen('catalog/view/theme/default/stylesheet/yo/menu/yo-'.$module.'.css', 'w+');
			fwrite ($style, $data['style']);
			fclose ($style);
			$this->document->addStyle('catalog/view/theme/default/stylesheet/yo/menu/yo-'.$module.'.css');
		}

		$data['minimized'] = $setting['yomenu']['minimized'];

		if (!empty($setting['yomenu'][$this->config->get('config_language_id')]['title_status']) && !empty($setting['yomenu'][$this->config->get('config_language_id')]['title'])) {
			$data['title'] = html_entity_decode($setting['yomenu'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
		} elseif ($data['minimized']) {
			$data['title'] = '<h3 class="panel-title">Menu title</h3>';
		} else {
			$data['title'] = '';
		}

		$data['menu_type'] = $setting['yomenu']['menu_type'];
		$data['count'] = $data['menu_type'] !== 'brands' ? $setting['yomenu']['count'] : '';
		$data['level_2'] = !empty($setting['yomenu']['level_2']) ? $setting['yomenu']['level_2'] : '';
		$data['level_3'] = !empty($setting['yomenu']['level_3']) ? $setting['yomenu']['level_3'] : '';
		$data['level_4'] = !empty($setting['yomenu']['level_4']) ? $setting['yomenu']['level_4'] : '';
		$data['level_5'] = !empty($setting['yomenu']['level_5']) ? $setting['yomenu']['level_5'] : '';
		$data['products_by_item'] = $setting['yomenu']['products_by_item'];

		$data['menu_design'] = $setting['yomenu']['menu_design'];

		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/yo/menu/yo-' . $data['menu_design'] . '.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/yo/menu/yo-' . $data['menu_design'] . '.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/yo/menu/yo-' . $data['menu_design'] . '.css');
		}

		if ($data['menu_design'] == 'am') {
			$this->document->addScript('catalog/view/javascript/jquery/yo/menu/easing.js');
		}

		if ($data['menu_design'] == 'fm') {
			$this->document->addScript('catalog/view/javascript/jquery/yo/menu/menuaim.js');
		}

		$data['save_view'] = !empty($setting['yomenu']['save_view']) ? $setting['yomenu']['save_view'] : 0;

		$data['image'] = $setting['yomenu']['item_image'];
		$data['image_width'] = !empty($setting['yomenu']['image_width']) ? $setting['yomenu']['image_width'] : '200';
		$data['image_height'] = !empty($setting['yomenu']['image_height']) ? $setting['yomenu']['image_height'] : '124';
		$data['icon'] = $setting['yomenu']['item_icon'];
		$data['icon_width'] = !empty($setting['yomenu']['icon_width']) ? $setting['yomenu']['icon_width'] : '';
		$data['icon_height'] = !empty($setting['yomenu']['icon_height']) ? $setting['yomenu']['icon_height'] : '';

		$data['toggle'] = $setting['yomenu']['toggle'];
		$data['easing'] = $setting['yomenu']['easing'];
		$data['easing_d'] = !empty($setting['yomenu']['easing_d']) ? (int)$setting['yomenu']['easing_d'] : '200';

		$data['button_back'] = $this->language->get('button_back');

		$data['column'] = !empty($setting['yomenu']['column']) ? $setting['yomenu']['column'] : '1';
		$data['image_position'] = $setting['yomenu']['image_position'];
		$data['content_status'] = $setting['yomenu']['content_status'];

		$this->load->model('catalog/yo_menu');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');

		$data['items'] = array();
		$items = array();

		if (isset($this->request->get['path'])) {
			$path = explode('_', (string)$this->request->get['path']);
			$path_pop = array_pop($path);
			$out_path = implode('_',$path);
		}

		if ($data['menu_type'] !== 'brands') {
			if ($data['menu_type'] == 'cats') {
				if (isset($setting['yomenu']['allcats'])) {
					$items = $this->model_catalog_yo_menu->getCategories(0);
				} else {
					if (!empty($setting['yomenu']['featured_category'])) {
						$items = $setting['yomenu']['featured_category'];
					} else {
						$items = array();
					}
				}
			} else {
				$current_id = array();
				if ($data['menu_type'] == 'current') {
					if (isset($setting['yomenu']['hide_current'])) {
						$current_id = (int)end($parts);
					} else {
						$current_id = (int)end($parts);
						$current_id = (int)prev($parts);
					}
				} else {
					$current_id = (int)current($parts);
				}
				$items = $this->model_catalog_yo_menu->getCategories($current_id);
			}

			foreach ($items as $item) {
				if ($data['menu_type'] == 'cats' && !isset($setting['yomenu']['allcats'])) {
					$item = $this->model_catalog_yo_menu->getCategory($item);
				}

				if ($item) {
					if ($data['level_2']) {
						$children1_data = array();
						$children1 = array();
						if ($data['products_by_item']) {
							$data['button_cart'] = $this->language->get('button_cart');

							if (isset($this->request->get['product_id'])) {
								$data['product_id'] = (int)$this->request->get['product_id'];
							} else {
								$data['product_id'] = 0;
							}

							$products_sort_order = explode('-', $setting['yomenu']['products_sort']);
							$sort = $products_sort_order['0'];
							$order = $products_sort_order['1'];

							$products_data = array(
								'filter_category_id' => $item['category_id'],
								'sort'               => $sort,
								'order'              => $order,
								'start'              => 0,
								'limit'              => $setting['yomenu']['products_limit']
								);

							$children1 = $this->model_catalog_product->getProducts($products_data);

							foreach ($children1 as $child1) {

								if ($child1['image']) {
									$image = $this->model_tool_image->resize($child1['image'], $data['image_width'], $data['image_height']);
								} else {
									$image = false;
								}

								if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
									$price = $this->currency->format($this->tax->calculate($child1['price'], $child1['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
								} else {
									$price = false;
								}

								if ((float)$child1['special']) {
									$special = $this->currency->format($this->tax->calculate($child1['special'], $child1['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
								} else {
									$special = false;
								}

								if ($this->config->get('config_review_status')) {
									$rating = $child1['rating'];
								} else {
									$rating = false;
								}

								if ($data['menu_type'] == 'current') {
									if (isset($setting['yomenu']['hide_current'])) {
										$href = $this->url->link('product/product', isset($this->request->get['path']) ? 'path=' . $this->request->get['path'] . '_' . $item['category_id'] . '&product_id=' . $child1['product_id'] : 'path=' . $item['category_id'] . '&product_id=' . $child1['product_id']);
									} else {
										$href = $this->url->link('product/product', isset($this->request->get['path']) && !empty($path) ? 'path=' . $out_path . '_' . $item['category_id'] . '&product_id=' . $child1['product_id'] : 'path=' . $item['category_id'] . '&product_id=' . $child1['product_id']);
									}
								} else if ($data['menu_type'] == 'parent') {
									$href = $this->url->link('product/product', isset($this->request->get['path']) ? 'path=' . $current_id . '_' . $item['category_id'] . '&product_id=' . $child1['product_id'] : 'path=' . $item['category_id'] . '&product_id=' . $child1['product_id']);
								} else {
									$href = $this->url->link('product/product', !empty($item['parent_id']) ? 'path=' . $item['parent_id'] . '_' . $item['category_id'] . '&product_id=' . $child1['product_id'] : 'path=' . $item['category_id'] . '&product_id=' . $child1['product_id']);
								}

								$children1_data[] = array(
									'category_id' => $child1['product_id'],
									'name'        => $child1['name'],
									'href'        => $href,
									'thumb'       => $image,
									'price'       => $price,
									'special'     => $special,
									'rating'      => $rating,
									'reviews'     => sprintf($this->language->get('text_reviews'), (int)$child1['reviews']),
									'active'      => $child1['product_id'] == $data['product_id'] ? true : false,
									'current'     => $child1['product_id'] == $data['product_id'] ? true : false,
									'icon'        => false,
									'count'       => false,
									'children2'   => false
								);
							}
						} else {
							if (!empty($setting['yomenu']['subcat_limit'])) {
								$children1 = array_slice($this->model_catalog_yo_menu->getCategories($item['category_id']), 0, $setting['yomenu']['subcat_limit']);
							} else {
								$children1 = $this->model_catalog_yo_menu->getCategories($item['category_id']);
							}

							foreach ($children1 as $child1) {
								if ($data['level_3']) {
									$children2_data = array();

									if (!empty($setting['yomenu']['subcat_limit'])) {
										$children2 = array_slice($this->model_catalog_yo_menu->getCategories($child1['category_id']), 0, $setting['yomenu']['subcat_limit']);
									} else {
										$children2 = $this->model_catalog_yo_menu->getCategories($child1['category_id']);
									}

									foreach ($children2 as $child2) {
										if ($data['level_4']) {
											$children3_data = array();

											if (!empty($setting['yomenu']['subcat_limit'])) {
												$children3 = array_slice($this->model_catalog_yo_menu->getCategories($child2['category_id']), 0, $setting['yomenu']['subcat_limit']);
											} else {
												$children3 = $this->model_catalog_yo_menu->getCategories($child2['category_id']);
											}

											foreach ($children3 as $child3) {
												if ($data['level_5']) {
													$children4_data = array();

													if (!empty($setting['yomenu']['subcat_limit'])) {
														$children4 = array_slice($this->model_catalog_yo_menu->getCategories($child3['category_id']), 0, $setting['yomenu']['subcat_limit']);
													} else {
														$children4 = $this->model_catalog_yo_menu->getCategories($child3['category_id']);
													}

													foreach ($children4 as $child4) {
														$filter_data = array(
															'filter_category_id'  => $child4['category_id'],
															'filter_sub_category' => true
															);

														if ($data['menu_type'] == 'current') {
															if (isset($setting['yomenu']['hide_current'])) {
																$href4 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $this->request->get['path'] . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id']);
															} else {
																$href4 = $this->url->link('product/category', isset($this->request->get['path']) && !empty($path) ? 'path=' . $out_path . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id']);
															}
														} else if ($data['menu_type'] == 'parent') {
															$href4 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $current_id . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id']);
														} else {
															$href4 = $this->url->link('product/category', !empty($item['parent_id']) ? 'path=' . $item['parent_id'] . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] . '_' . $child4['category_id']);
														}

														$children4_data[] = array(
															'category_id' => $child4['category_id'],
															'name'        => $child4['name'],
															'href'        => $href4,
															'count'       => $data['count'] ? $this->model_catalog_product->getTotalProducts($filter_data) : '',
															'active'      => in_array($child4['category_id'], $parts),
															'current'     => $child4['category_id'] == (int)end($parts) ? true : false,
															'thumb'       => $this->model_tool_image->resize($child4['yomenu_image'] ? $child4['yomenu_image'] : $child4['image'], $data['image_width'], $data['image_height']),
															'content'     => html_entity_decode($child4['yomenu_content'], ENT_QUOTES, 'UTF-8'),
															'icon'        => $data['icon_width'] && $data['icon_height'] ? $this->model_tool_image->resize($child4['yomenu_icon'], $data['icon_width'], $data['icon_height']): $child4['yomenu_icon']
														);
													}
												}

												$filter_data = array(
													'filter_category_id'  => $child3['category_id'],
													'filter_sub_category' => true
													);

												if ($data['menu_type'] == 'current') {
													if (isset($setting['yomenu']['hide_current'])) {
														$href3 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $this->request->get['path'] . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id']);
													} else {
														$href3 = $this->url->link('product/category', isset($this->request->get['path']) && !empty($path) ? 'path=' . $out_path . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id']);
													}
												} else if ($data['menu_type'] == 'parent') {
													$href3 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $current_id . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id']);
												} else {
													$href3 = $this->url->link('product/category', !empty($item['parent_id']) ? 'path=' . $item['parent_id'] . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id']);
												}

												$children3_data[] = array(
													'category_id' => $child3['category_id'],
													'name'        => $child3['name'],
													'href'        => $href3,
													'count'       => $data['count'] ? $this->model_catalog_product->getTotalProducts($filter_data) : '',
													'active'      => in_array($child3['category_id'], $parts),
													'current'     => $child3['category_id'] == (int)end($parts) ? true : false,
													'icon'        => $data['icon_width'] && $data['icon_height'] ? $this->model_tool_image->resize($child3['yomenu_icon'], $data['icon_width'], $data['icon_height']): $child3['yomenu_icon'],
													'thumb'       => $this->model_tool_image->resize($child3['yomenu_image'] ? $child3['yomenu_image'] : $child3['image'], $data['image_width'], $data['image_height']),
													'content'     => html_entity_decode($child3['yomenu_content'], ENT_QUOTES, 'UTF-8'),
													'children4'   => $data['level_5'] ? $children4_data : ''
												);
											}
										}

										$filter_data = array(
											'filter_category_id'  => $child2['category_id'],
											'filter_sub_category' => true
											);

										if ($data['menu_type'] == 'current') {
											if (isset($setting['yomenu']['hide_current'])) {
												$href2 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $this->request->get['path'] . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id']);
											} else {
												$href2 = $this->url->link('product/category', isset($this->request->get['path']) && !empty($path) ? 'path=' . $out_path . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id']);
											}
										} else if ($data['menu_type'] == 'parent') {
											$href2 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $current_id . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id']);
										} else {
											$href2 = $this->url->link('product/category', !empty($item['parent_id']) ? 'path=' . $item['parent_id'] . '_' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id'] . '_' . $child2['category_id']);
										}

										$children2_data[] = array(
											'category_id' => $child2['category_id'],
											'name'        => $child2['name'],
											'href'        => $href2,
											'count'       => $data['count'] ? $this->model_catalog_product->getTotalProducts($filter_data) : '',
											'active'      => in_array($child2['category_id'], $parts),
											'current'     => $child2['category_id'] == (int)end($parts) ? true : false,
											'icon'        => $data['icon_width'] && $data['icon_height'] ? $this->model_tool_image->resize($child2['yomenu_icon'], $data['icon_width'], $data['icon_height']): $child2['yomenu_icon'],
											'thumb'       => $this->model_tool_image->resize($child2['yomenu_image'] ? $child2['yomenu_image'] : $child2['image'], $data['image_width'], $data['image_height']),
											'content'     => html_entity_decode($child2['yomenu_content'], ENT_QUOTES, 'UTF-8'),
											'children3'   => $data['level_4'] ? $children3_data : ''
										);
									}
								}

								$filter_data = array(
									'filter_category_id'  => $child1['category_id'],
									'filter_sub_category' => true
									);

								if ($data['menu_type'] == 'current') {
									if (isset($setting['yomenu']['hide_current'])) {
										$href1 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $this->request->get['path'] . '_' . $item['category_id'] . '_' . $child1['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id']);
									} else {
										$href1 = $this->url->link('product/category', isset($this->request->get['path']) && !empty($path) ? 'path=' . $out_path . '_' . $item['category_id'] . '_' . $child1['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id']);
									}
								} else if ($data['menu_type'] == 'parent') {
									$href1 = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $current_id . '_' . $item['category_id'] . '_' . $child1['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id']);
								} else {
									$href1 = $this->url->link('product/category', !empty($item['parent_id']) ? 'path=' . $item['parent_id'] . '_' . $item['category_id'] . '_' . $child1['category_id'] : 'path=' . $item['category_id'] . '_' . $child1['category_id']);
								}

								$children1_data[] = array(
									'category_id' => $child1['category_id'],
									'name'        => $child1['name'],
									'href'        => $href1,
									'count'       => $data['count'] ? $this->model_catalog_product->getTotalProducts($filter_data) : '',
									'active'      => in_array($child1['category_id'], $parts),
									'current'     => $child1['category_id'] == (int)end($parts) ? true : false,
									'icon'        => $data['icon_width'] && $data['icon_height'] ? $this->model_tool_image->resize($child1['yomenu_icon'], $data['icon_width'], $data['icon_height']): $child1['yomenu_icon'],
									'thumb'       => $this->model_tool_image->resize($child1['yomenu_image'] ? $child1['yomenu_image'] : $child1['image'], $data['image_width'], $data['image_height']),
									'content'     => html_entity_decode($child1['yomenu_content'], ENT_QUOTES, 'UTF-8'),
									'children2'   => $data['level_3'] ? $children2_data : ''
								);
							}
						}
					}

					$filter_data = array(
						'filter_category_id'  => $item['category_id'],
						'filter_sub_category' => true
						);

					if ($data['menu_type'] == 'current') {
						if (isset($setting['yomenu']['hide_current'])) {
							$href = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $this->request->get['path'] . '_' . $item['category_id'] : 'path=' . $item['category_id']);
						} else {
							$href = $this->url->link('product/category', isset($this->request->get['path']) && !empty($path) ? 'path=' . $out_path . '_' . $item['category_id'] : 'path=' . $item['category_id']);
						}
					} else if ($data['menu_type'] == 'parent') {
						$href = $this->url->link('product/category', isset($this->request->get['path']) ? 'path=' . $current_id . '_' . $item['category_id'] : 'path=' . $item['category_id']);
					} else {
						$href = $this->url->link('product/category', !empty($item['parent_id']) ? 'path=' . $item['parent_id'] . '_' . $item['category_id'] : 'path=' . $item['category_id']);
					}

					$data['items'][] = array(
						'category_id' => $item['category_id'],
						'name'        => $item['name'],
						'href'        => $href,
						'count'       => $data['count'] ? $this->model_catalog_product->getTotalProducts($filter_data) : '',
						'active'      => in_array($item['category_id'], $parts),
						'current'     => $item['category_id'] == (int)end($parts) ? true : false,
						'icon'        => $data['icon_width'] && $data['icon_height'] ? $this->model_tool_image->resize($item['yomenu_icon'], $data['icon_width'], $data['icon_height']): $item['yomenu_icon'],
						'thumb'       => $this->model_tool_image->resize($item['yomenu_image'] ? $item['yomenu_image'] : $item['image'], $data['image_width'], $data['image_height']),
						'content'     => html_entity_decode($item['yomenu_content'], ENT_QUOTES, 'UTF-8'),
						'children1'   => $data['level_2'] ? $children1_data : ''
					);
				}
			}
		} else {
			$this->load->model('catalog/manufacturer');

			if (isset($this->request->get['manufacturer_id'])) {
				$data['manufacturer_id'] = (int)$this->request->get['manufacturer_id'];
			} else {
				$data['manufacturer_id'] = 0;
			}

			if (isset($this->request->get['product_id'])) {
				$data['product_id'] = (int)$this->request->get['product_id'];
			} else {
				$data['product_id'] = 0;
			}

			$product_info = $this->model_catalog_product->getProduct($data['product_id']);
			$data['bids'] = $product_info['manufacturer_id'];

				if (isset($setting['yomenu']['allbrands'])) {
					$manufacturers = $this->model_catalog_manufacturer->getManufacturers();
				} else {
					if (!empty($setting['yomenu']['featured_brands'])) {
						$manufacturers = $setting['yomenu']['featured_brands'];
					} else {
						$manufacturers = array();
					}
				}

			foreach ($manufacturers as $manufacturer) {
				if (!isset($setting['yomenu']['allbrands'])) {
					$manufacturer = $this->model_catalog_manufacturer->getManufacturer($manufacturer);
				}

				if ($manufacturer) {
					if ($data['products_by_item']) {
						$data['button_cart'] = $this->language->get('button_cart');

						$products_sort_order = explode('-', $setting['yomenu']['products_sort']);
						$sort = $products_sort_order['0'];
						$order = $products_sort_order['1'];

						$products_data = array(
							'filter_manufacturer_id' => $manufacturer['manufacturer_id'],
							'sort'                   => $sort,
							'order'                  => $order,
							'start'                  => 0,
							'limit'                  => $setting['yomenu']['products_limit']
							);

						$children1_data = array();
						$children1 = $this->model_catalog_product->getProducts($products_data);

						foreach ($children1 as $child) {

							if ($child['image']) {
								$image = $this->model_tool_image->resize($child['image'], $data['image_width'], $data['image_height']);
							} else {
								$image = false;
							}

							if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
								$price = $this->currency->format($this->tax->calculate($child['price'], $child['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
							} else {
								$price = false;
							}

							if ((float)$child['special']) {
								$special = $this->currency->format($this->tax->calculate($child['special'], $child['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
							} else {
								$special = false;
							}

							if ($this->config->get('config_review_status')) {
								$rating = $child['rating'];
							} else {
								$rating = false;
							}

							$children1_data[] = array(
								'category_id' => $child['product_id'],
								'name'        => $child['name'],
								'href'        => $this->url->link('product/product', 'manufacturer_id=' . $manufacturer['manufacturer_id'] . '&product_id=' . $child['product_id']),
								'thumb'       => $image,
								'price'       => $price,
								'special'     => $special,
								'rating'      => $rating,
								'reviews'     => sprintf($this->language->get('text_reviews'), (int)$child['reviews']),
								'active'      => $child['product_id'] == $data['product_id'] ? 1 : 0,
								'current'     => $child['product_id'] == $data['product_id'] ? 1 : 0,
								'icon'        => false,
								'count'       => false,
								'children2'   => false
							);
						}
					}

					$data['items'][] = array(
						'category_id'     => $manufacturer['manufacturer_id'],
						'name'            => $manufacturer['name'],
						'href'            => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $manufacturer['manufacturer_id']),
						'active'          => $manufacturer['manufacturer_id'] == $data['manufacturer_id'] ? 1 : 0,
						'current'         => $manufacturer['manufacturer_id'] == $data['manufacturer_id'] ? true : false,
						'thumb'           => $this->model_tool_image->resize($manufacturer['yomenu_image'] ? $manufacturer['yomenu_image'] : $manufacturer['image'], $data['image_width'], $data['image_height']),
						'content'         => html_entity_decode($manufacturer['yomenu_content'], ENT_QUOTES, 'UTF-8'),
						'icon'            => $data['icon_width'] && $data['icon_height'] ? $this->model_tool_image->resize($manufacturer['yomenu_icon'], $data['icon_width'], $data['icon_height']): $manufacturer['yomenu_icon'],
						'children1'       => $data['products_by_item'] ? $children1_data : '',
						'count'           => false
					);
				}
			}
		}

		$data['module'] = $module++;

		if ($data['items']) {
			return $this->load->view('extension/module/yo/menu/yo_' . $data['menu_design'], $data);
		}
	}
}