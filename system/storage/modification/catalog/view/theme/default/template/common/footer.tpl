
        <?php global $vieModules; $vie_module_groups = $vieModules; ?>

        <?php if (!empty($vie_module_groups['vie_fw_promo'])) { ?>
        <?php echo implode('', $vie_module_groups['vie_fw_promo']); ?>
        <?php } ?>

        <?php if (!empty($vie_module_groups['vie_c_b_o'])) { ?>
          <div class="container">
            <div class="row">
              <div id="content-bottom-outer" class="col-sm-12">
                <?php echo implode('', $vie_module_groups['vie_c_b_o']); ?>
              </div>
            </div>
          </div>
        <?php } ?>

        <?php if (!empty($vie_module_groups['vie_ft'])) { ?>
          <div id="footer-top">
            <?php echo implode('', $vie_module_groups['vie_ft']); ?>
          </div>
        <?php } ?>
      
<footer>
  <div class="container">

        <?php if (!empty($vie_module_groups['vie_fct'])) { ?>
        <?php echo implode('', $vie_module_groups['vie_fct']); ?>
        <?php } ?>
      
    <div class="row">
    
      <div class="col-sm-6 first_column">
        <h4>Каталог</h4>
      <?php if ($categories) { ?>
          <ol  class="footer_ol">
    
            <?php foreach ($categories as $category) { ?>
 
 
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        
            
        <?php } ?>

          </ol>
       
         
   
 </div>
 
    <?php } ?>
      <div class="col-sm-3 second_column">
        <ul class="list-unstyled">
        <li><a href="http://newshop.ga/catalogue">Каталог</a></li>
        <li><a href="http://newshop.ga/delivery">Доставка и оплата</a></li>
        <li><a href="">О производителе</a></li>  
        <li><a href="">Новости</a></li>
        <li><a href="">Статьи</a></li>
     
        </ul>
      </div>
     <div class="col-sm-3 third_column">
        <h4>Контакты</h4>
        <ul class="list-unstyled">
        <li><a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" ><?php echo $address; ?></a></li>
          <li><a href="tel:+2312312312"><?php echo $telephone; ?></a></li> 
            <li><a href="tel:+2312312312"><?php echo $telephone; ?></a></li> 
               <li>пн-чт - с 08:00 до 18:00</li>
         <li>пт - с 08:00 до 17:30</li>
        </ul>
      </div>
      
       
       
    </div>
    <hr>
    <div class="col-md-auto flex_footer">
    <img src="../image/logo.png@1X.png" alt="" class="logoimg">
 <div>   <span><?php echo $powered; ?></span>  </div>
 <div>   <span><a href="http://newshop.ga/feedback" class="flinks">Обратная связь</a></span></div>
  <div>  <span><a href="http://newshop.ga/rewiev"  class="flinks">Оставить отзыв</a></span> </div>
 <div>   <span> <a href="http://newshop.ga/offer_book"  class="flinks">Книга жалоб и предложений</a> </span> </div>
 <div>
    <img src="../image/icons8-вконтакте-26@1X.png" alt="" class="img_social_footer">
    <img src="../image/icons8-instagram-26 копия@1X.png" alt="" class="img_social_footer">
     <img src="../image/icons8-facebook-@1X.png" alt="" class="img_social_footer">
   </div> 
   </div>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->


				<?php if ($buyoneclick_status) { ?>
					<div id="boc_order" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="boc_form" action="" role="form">
									<fieldset>
								<div class="modal-header">
									<button class="close" type="button" data-dismiss="modal">×</button>
									<h2 id="boc_order_title" class="modal-title"><?php echo $buyoneclick_title; ?></h2>
								</div>
								<div class="modal-body">
									<div id="boc_product_field" class="col-xs-12"></div>
									<div class="col-xs-12"><hr /></div>
									<div class="col-xs-12">
										<div style="display:none">
											<input id="boc_admin_email" type="text" name="boc_admin_email" value="<?php echo $buyoneclick_admin_email; ?>">
										</div>
										<div style="display:none">
											<input id="boc_product_id" type="text" name="boc_product_id">
										</div>
										<?php if ($buyoneclick_field1_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field1_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-user" aria-hidden="true"></i></span>
												<input id="boc_name" class="form-control<?php if ($buyoneclick_field1_required) { echo ' required';} ?>" type="text" name="boc_name" placeholder="<?php echo $buyoneclick_field1_title; ?>">
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field2_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field2_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-phone-square" aria-hidden="true"></i></span>
												<input id="boc_phone" class="form-control<?php if ($buyoneclick_field2_required) { echo ' required';} ?>" type="tel" name="boc_phone" placeholder="<?php if ($buyoneclick_validation_status) { echo $buyoneclick_validation_type; } else { echo $buyoneclick_field2_title; } ?>"<?php if ($buyoneclick_validation_status) {echo ' data-pattern="true"';} else {echo ' data-pattern="false"';} ?>>
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field3_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field3_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-envelope" aria-hidden="true"></i></span>
												<input id="boc_email" class="form-control<?php if ($buyoneclick_field3_required) { echo ' required';} ?>" type="email" name="boc_email" placeholder="<?php echo $buyoneclick_field3_title; ?>">
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field4_status) { ?>
											<div class="form-group<?php if ($buyoneclick_field4_required) { echo ' has-warning';} ?>">
												<textarea id="boc_message" class="form-control<?php if ($buyoneclick_field4_required) { echo ' required';} ?>" name="boc_message" rows="3" placeholder="<?php echo $buyoneclick_field4_title; ?>" ></textarea>
											</div>
										<?php } ?>
										<?php if ($buyoneclick_agree_status !=0) { ?>
											<div class="checkbox">
												<label>
													<input id="boc_agree" type="checkbox" name="boc_agree" class="required" value="1"> <?=$buyoneclick_text_agree;?>
												</label>
											</div>
										<?php } ?>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="modal-footer">
									<div class="col-sm-2 hidden-xs">
									</div>
									<div class="col-sm-8 col-xs-12">
										<button type="submit" id="boc_submit" class="btn btn-lg btn-block btn-default"><?php echo $buyoneclick_button_order; ?></button>
									</div>
									<div class="col-sm-2 hidden-xs">
									</div>
								</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
					<div id="boc_success" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body">
									<div class="text-center"><?php echo $buyoneclick_success_field; ?></div>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript"><!--
					$('.boc_order_btn').on('click', function() {
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
							beforeSend: function() {
								$('.boc_order_btn').button('loading');
							},
							complete: function() {
								$('.boc_order_btn').button('reset');
							},
							success: function(data) {
								//console.log(data);
								$('#boc_product_field').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});
					$('.boc_order_category_btn').on('click', function() {
						var for_post = {};
						for_post.product_id = $(this).attr('data-product_id');
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: for_post,
							beforeSend: function() {
								$('.boc_order_btn').button('loading');
							},
							complete: function() {
								$('.boc_order_btn').button('reset');
							},
							success: function(data) {
								//console.log(data);
								$('#boc_product_field').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});					
					//--></script>
				<?php } ?>
				
</body></html>