<footer>
  <div class="container">
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

</body></html>