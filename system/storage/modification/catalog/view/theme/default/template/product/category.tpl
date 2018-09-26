<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
      <!--  <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>-->
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-12 dop_info_text"><?php echo $description; ?></div>
        <?php } ?>
      </div>
    <!--  <hr>-->
      <?php } ?>
      <?php if ($categories) { ?>
    <!--  <h3><?php echo $text_refine; ?></h3>-->
      
        <div class="row sub_padd">
        <?php foreach ($categories as $category) { ?>
		<div class="col-xs-12 col-sm-6 col-md-3 col-sm-4">
			<div class="product-thumb transition subcategories">
                <div class="image image_sub">
					<a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a>
                     <div style="min-height: 86px" class="caption text-center">
                   <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                </div>
				</div>
               
            </div>
        </div>
		<?php } ?>
		</div>
      
      <?php } ?>
      <?php if ($products) { ?>
    </div>
  </div>
</div>

      <div class="container-fluid"> 
      <div class="row sort_new">
        <div class="container"> 
           <div class="col-md-8 col-xs-12">
          <div class="form-group input-group input-group-sm shas-sort">
          <link rel="stylesheet" type="text/css" href="catalog/view/stylesheet/sha-sort.css" />   
           <div id="sha-sort">
            <span><?php echo $text_sort; ?></span>    
             <?php foreach ($sorts as $sort_key => $sort_val) { ?>
        
             <a sort-class="<?php echo $sort_val['value']; ?>" class="sha-sortitem<?php if ($sort_val['value'] == $sort . '-' . $order) { ?> selected<?php } ?><?php if (!empty($sorts[$sort_key + 1]) && $sorts[$sort_key + 1]['value'] == $sort . '-' . $order) { ?> next-selected<?php } ?>" href="<?php echo $sort_val['href']; ?>"><?php echo $sort_val['text']; ?><span></span></a>      
             <?php } ?>    
               
           </div>
          </div>
        </div>
       
       
        <div class="col-md-2 col-xs-4">
          <div class="form-group input-group input-group-sm sort_count_mg">
            <label class="input-group-addon sort_count" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit_sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-2 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm group_plitka">
           
            <button type="button" id="grid-view" class="btn btn-default btn-plitka" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><img src="../image/plitka.png" alt=""></button>
             <button type="button" id="list-view" class="btn btn-default btn-plitka" data-toggle="tooltip" title="<?php echo $button_list; ?>"><img src="../image/pram.png" alt=""></button>
          </div>
        </div>
        <div class="col-md-2 col-sm-6">
        </div>
      </div>
      </div>
      </div>
      <div class="container-fluid bg_color_grey"> 
      <div class="container "> 
        <div class="row rows_error"> 
        <div id="content">
        <div class="row rows_error">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-lg-6 col-md-6 col-sm-12 col-xs-12 test">
          <div class="product-thumb cat_product-thumb">
            <div class="caption">
         <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
          <button type="button" class="compared" data-toggle="tooltip" id="id1" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"> </button>

        </div>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
       
        <?php } ?>
        
      </div>
      <div class="button-group">
       
      <!--  <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>-->
      <div class="padding_currency col-sm-6"> 
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
           <p class="price_sales">
          <span class="price-old"><?php echo $product['price']; ?></span><br>  <span class="price-new"><?php echo $product['special']; ?></span> 
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        </p>
          <?php } ?>
        </p>
        <?php } ?>
        </div>
				<?php if ($buyoneclick_status_category) { ?>
					<button type="button" class="btn-block boc_order_category_btn" <?php if ($buyoneclick_ya_status || $buyoneclick_google_status) { ?> onClick="clickAnalytic(); return true;" <?php } ?> data-toggle="modal" data-target="#boc_order" data-product="<?php echo $product['name'] ?>" data-product_id="<?php echo $product['product_id']; ?>"><?php echo $buyoneclick_name; ?></button>
				<?php } ?>
         <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><img src="../image/icons8cart.png" alt=""> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
      </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-12 text-center pagination_mg"><?php echo $pagination; ?></div>
       <!-- <div class="col-sm-6 text-right"><?php echo $results; ?></div>-->
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<section class=" bg-white section_padding_100" id="about">
        <div class="container"> 
      
     <div id="home_infotext">   <div class="infotext_home" id="textinfo_home"> 
            <div class="col-sm-6">  
        <h4>Интернет-магазин электроинструментов diold.ru</h4>

<p>Наличие надежного и качественного инструмента – жизненная необходимость для проведения качественных ремонтных, иных работ. Особенно важно это для предприятий, занимающихся производством или строительными работами, но сейчас все чаще частные лица имеют дома необходимый электроинструмент, ведь он прост в применении и не занимает много места. Расходы на его приобретение достаточно высоки, поэтому логичным становится желание сэкономить и здесь поможет наш интернет-магазин "Диолд" электроинструмент.</p>

<p>Компания занимается производством и продажей следующих товаров:</p>
<ul>
   <li>сварочное оборудование;</li>
    <li>насосы;</li>
    <li>станки;</li>
    <li>компрессоры;</li>
    <li>расходные материалы;</li>
    <li>генераторы;</li>
</ul>
        </div>
        <div class="col-sm-6 right_text">  
               <p> А также электроинструмент для бытового и промышленного использования:</p>
<ul>    
   <li>дрели;  </li>
    <li>шуруповерты; </li>
    <li>лобзики; </li>
    <li>рубанки;</li>
    <li>шлифмашины; </li>
    <li>перфораторы; </li>
    <li>пилы.  </li> 
</ul>
<p>Почему именно мы?
Выбирая в качестве места для покупки интернет-магазин "Диолд", вы получаете следующие преимущества:</p>
<ul>    
<li>широкий выбор электроинструмента (дрели, лобзики, пилы, перфораторы, шлифовальные машинки и т. д.);</li>
<li>только качественное оборудование;</li>
<li>постоянное наличие на складе;</li>
<li>гарантийное и постгарантийное обслуживание;</li>
<li>оперативная доставка.</li>
    </ul>
        </div>
        </div> 

        </div> 
</div>
    </section>
<?php echo $footer; ?>
