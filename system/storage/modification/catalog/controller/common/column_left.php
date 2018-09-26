<?php
class ControllerCommonColumnLeft extends Controller {

        public function __construct($registry) {
          global $vieModules;

          $vieModules = array();

          parent::__construct($registry);

          if (!$registry->get('vie_module_groups')) {
            $positions = array(
              'vie_ht' => 'Header Top',
              'vie_menu' => 'Menu',
              'vie_fw_promo' => 'Fullwidth Promotion',
              'vie_promo' => 'Promotion Top',
              'vie_pm_left' => 'Promotion Left',
              'vie_pm_right' => 'Promotion Right',
              'vie_pm_content' => 'Promotion Content',
              'vie_pm_bottom' => 'Promotion Bottom',
              'vie_c_b_o' => 'Content Bottom Outer',
              'vie_ft' => 'Footer Top',
              'vie_fct' => 'Footer Content Top',
              'vie_f_col_1' => 'Footer Column 1',
              'vie_f_col_2' => 'Footer Column 2',
              'vie_f_col_3' => 'Footer Column 3',
              'vie_f_col_4' => 'Footer Column 4',
              'vie_fcb' => 'Footer Content Bottom',
              'vie_fb' => 'Footer Bottom'
            );

            $module_groups = array();

            foreach ($positions as $position => $name) {
              if (!isset($module_groups[$position])) {
                $module_groups[$position] = array();
              }

              $module_groups[$position] = $this->getModulesByPosition($position);
            }

            $vieModules = $module_groups;
          }
        }

        protected function getModulesByPosition($position) {
          $this->load->model('design/layout');
          $this->load->model('extension/module');

          if (isset($this->request->get['route'])) {
            $route = (string)$this->request->get['route'];
          } else {
            $route = 'common/home';
          }

          $layout_id = 0;

          if ($route == 'product/category' && isset($this->request->get['path'])) {
            $this->load->model('catalog/category');

            $path = explode('_', (string)$this->request->get['path']);

            $layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
          }

          if ($route == 'product/product' && isset($this->request->get['product_id'])) {
            $this->load->model('catalog/product');

            $layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
          }


      if ($route == 'newsblog/category' && isset($this->request->get['newsblog_path'])) {
			$this->load->model('newsblog/category');

			$path = explode('_', (string)$this->request->get['newsblog_path']);

			$layout_id = $this->model_newsblog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'newsblog/article' && isset($this->request->get['newsblog_article_id'])) {
			$this->load->model('newsblog/article');

			$layout_id = $this->model_newsblog_article->getArticleLayoutId($this->request->get['newsblog_article_id']);
		}
      
          if ($route == 'information/information' && isset($this->request->get['information_id'])) {
            $this->load->model('catalog/information');

            $layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
          }

          if (!$layout_id) {
            $layout_id = $this->model_design_layout->getLayout($route);
          }

          if (!$layout_id) {
            $layout_id = $this->config->get('config_layout_id');
          }

          $vie_modules = array();

          $modules = $this->model_design_layout->getLayoutModules($layout_id, $position);

          foreach ($modules as $module) {
            $part = explode('.', $module['code']);

            if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
              $module_data = $this->load->controller('extension/module/' . $part[0]);

              if ($module_data) {
                $vie_modules[] = $module_data;
              }
            }

            if (isset($part[1])) {
              $setting_info = $this->model_extension_module->getModule($part[1]);

              if ($setting_info && $setting_info['status']) {
                $output = $this->load->controller('extension/module/' . $part[0], $setting_info);

                if ($output) {
                  $vie_modules[] = $output;
                }
              }
            }
          }

          return $vie_modules;
        }
      
	public function index() {
		$this->load->model('design/layout');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$layout_id = 0;

		if ($route == 'product/category' && isset($this->request->get['path'])) {
			$this->load->model('catalog/category');

			$path = explode('_', (string)$this->request->get['path']);

			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'product/product' && isset($this->request->get['product_id'])) {
			$this->load->model('catalog/product');

			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}


      if ($route == 'newsblog/category' && isset($this->request->get['newsblog_path'])) {
			$this->load->model('newsblog/category');

			$path = explode('_', (string)$this->request->get['newsblog_path']);

			$layout_id = $this->model_newsblog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'newsblog/article' && isset($this->request->get['newsblog_article_id'])) {
			$this->load->model('newsblog/article');

			$layout_id = $this->model_newsblog_article->getArticleLayoutId($this->request->get['newsblog_article_id']);
		}
      
		if ($route == 'information/information' && isset($this->request->get['information_id'])) {
			$this->load->model('catalog/information');

			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}

		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}

		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}

		$this->load->model('extension/module');

		$data['modules'] = array();

		$modules = $this->model_design_layout->getLayoutModules($layout_id, 'column_left');

		foreach ($modules as $module) {
			$part = explode('.', $module['code']);

			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$module_data = $this->load->controller('extension/module/' . $part[0]);

				if ($module_data) {
					$data['modules'][] = $module_data;
				}
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$output = $this->load->controller('extension/module/' . $part[0], $setting_info);

					if ($output) {
						$data['modules'][] = $output;
					}
				}
			}
		}

		return $this->load->view('common/column_left', $data);
	}
}
