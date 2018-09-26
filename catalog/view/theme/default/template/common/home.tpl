<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"> <?php echo $content_top; ?></div>
    <?php echo $column_right; ?></div>
    </div>
    <div class="container-fluid bg-color_white">
    <section class="special-area bg-white section_padding_100" id="about">
        <div class="container">
            <div class="row">
                <!-- Single Special Area -->
                <div class="area">
                <div class="col-12 col-md-3">
                    <div class="single-special text-center wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/icon1.png@1X.png" aria-hidden="true"> 
                        </div>
                        <h4>Официальный ритейлер продукции ДИОЛД</h4>
                      <!--  <p>We build pretty complex tools and this allows us to take designs and turn them into functional quickly and easily</p>-->
                    </div>
                </div>
                <!-- Single Special Area -->
                <div class="col-12 col-md-3">
                    <div class="single-special text-center wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/icon2.png@1X.png" aria-hidden="true"> 
                        </div>
                        <h4>Низкие цены и бесплатная доставка по всей Беларуси</h4>
                       
                    </div>
                </div>
                <!-- Single Special Area -->
                <div class="col-12 col-md-3">
                    <div class="single-special text-center wow fadeInUp" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/icon3.png@1X.png" aria-hidden="true"> 
                        </div>
                        <h4>Высокое качество продукции - инструменты прослужат вам долго!</h4>    
                    </div>
                </div>
                    <div class="col-12 col-md-3">
                    <div class="single-special text-center wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/icon4.png@1X.png" aria-hidden="true"> 
                        </div>
                        <h4>Гарантия на всю продукцию и сервисное обслуживание</h4>
                       
                    </div>
                </div>

              
          
            </div>
            </div>
              <?php echo $content_bottom; ?>
        </div>
    </section>
           

</div>
<div class="container">
 <div id="home_feateredcarusel1"></div>
 
 </div>
 <div class="container-fluid bg-color_white padding_banner">  
    <div class="container"> 
    <div id="home_banner"></div>
    </div>
  </div>
  <div class="container">
 <div id="home_special"></div>
 
 </div>
  <div class="container-fluid bg-color_white mg20">
    <section class=" bg-white section_padding_100" id="about">
        <div class="container">
            <div class="pre_footer_bg"> 
            <div class="row">
                <!-- Single Special Area -->
                <div class="area2">
                <div class="col-12 col-md-3">
                    <div class="textwhitecolor text-center wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/001-money.png" aria-hidden="true"> 
                        </div>
                        <h4>Наличные</h4>
                      <!--  <p>We build pretty complex tools and this allows us to take designs and turn them into functional quickly and easily</p>-->
                    </div>
                </div>
                <!-- Single Special Area -->
                <div class="col-12 col-md-3">
                    <div class="textwhitecolor text-center wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/004-credit-card.png" aria-hidden="true"> 
                        </div>
                        <h4>Банковские карты</h4>
                       
                    </div>
                </div>
                <!-- Single Special Area -->
                <div class="col-12 col-md-3">
                    <div class="textwhitecolor text-center wow fadeInUp" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/003-online-shop.png" aria-hidden="true"> 
                        </div>
                        <h4>Электронные платежи</h4>    
                    </div>
                </div>
                    <div class="col-12 col-md-3">
                    <div class="textwhitecolor text-center wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                        <div class="single-icon">
                            <img src="../image/005-money-1.png" aria-hidden="true"> 
                        </div>
                        <h4>Кредит и рассрочка</h4>
                       
                    </div>
                </div>

              
          
            </div>
            </div>
            </div>
        <div class="social_ref "> 
        <p class="social-ref"> Расскажите о нашем сайте в соцсетях! <img src="../image/icons8-вконтакте-26@1X.png" alt="" class="img_social"><img src="../image/icons8-instagram-26 копия@1X.png" alt="" class="img_social"> <img src="../image/icons8-facebook-@1X.png" alt="" class="img_social"></p>
        </div>
     <div id="home_infotext">   </div>
        </div>
    </section>
</div>
<?php echo $footer; ?>
      <script type="text/javascript">

$( init );

function init() {

 // Перемещаем параграф из #myDiv1 в #myDiv2
  $('#home_feateredcarusel1').append( $('#featured') );
   $('#home_banner').append( $('#onebanner') );
    $('#home_special').append( $('#special') );
     $('#home_infotext').append( $('#textinfo_home') );
}

</script>