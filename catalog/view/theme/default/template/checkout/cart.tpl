<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?>
       <!-- <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>-->
      </h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="target">
        <div class="table-responsive">
          <table class="table table-dishes table-cart">
            <!--<thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>-->
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <!--<td class="text-left"><?php echo $product['model']; ?></td>-->
                <!--<td class="text-left"><div class="input-group btn-block" style="max-width: 200px; width: 100px;">
 <span class="input-group-btn cart_input-group-btn">
                		  <button type="submit" id="minus">-</button>
                		</span>
                    <input type="text" id="qty" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" onkeyup="javascript:updateprice();"/>
                    <span class="input-group-btn">-->
                   <!--<button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>-->
                 
 <!-- <span class="input-group-btn cart_input-group-btn">
                    	<button type="submit" id="add">+</button>
</span>
                 </span></td>-->
                     <td class="text-left"><div class="input-group btn-block" style="max-width: 200px; width: 100px; display: flex;">
                    
                     <button onclick="$(this).next().val($(this).next().val()-1);$(this).parents('form').submit();" class="cart_input-group-btn"  id="minus">-</button>﻿﻿﻿
                   
                    <input type="text" id="qty" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" onkeyup="javascript:updateprice();"/>
                     <button onclick="$(this).prev().val(~~$(this).prev().val()+1);$(this).parents('form').submit();" class="cart_input-group-btn" id="add">+</button> 
                   <!--<button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>-->
                
                 </div></td>
                <td class="text-right product_price"><?php echo $product['price']; ?></td>
               <!-- <td class="text-right"><?php echo $product['total']; ?></td>-->
                  <td class="text-right">   <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="cart_input-group-btn delete_button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">X</button></td>
              </tr>

              <?php } ?>
           
 
   
              <?php foreach ($vouchers as $voucher) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $voucher['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>

              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
            <div class="col-md-12 col-xs-12 text-center">
     <?php $res_total = array_pop($totals);  ?>
      
        <span class="title_res_total"><?php echo $res_total['title']; ?>:</span>
         <span class="title_res_total_num"><?php echo $res_total['text']; ?></span>
     
 </div>

      <?php if ($modules) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion">
        <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <br />
   
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
 