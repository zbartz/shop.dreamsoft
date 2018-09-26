<div id="special">
<h3><?php echo $heading_title; ?></h3>
<div class="row car">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="product-thumb transition">
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
         <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><img src="../image/icons8cart.png" alt=""> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
</div>
<script type="text/javascript"><!--
$('.car').owlCarousel({
   items: 4,
   autoPlay: 3000,
   navigation: false,
   navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
   pagination: true
});
--></script>
