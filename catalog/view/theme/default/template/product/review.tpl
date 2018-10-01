<style type="text/css">
.row .col-md-2{
  display: flex;
    flex-direction: column;
}
.review-author{
  color:  #1f1f1f;
font-size: 18px;/* Приближение из-за подстановки шрифтов */
font-weight: 500;
}
.review-date-added{
  padding-top: 17px;
  color:  #7c7c7c;
font-size: 16px;
}
    .fa-star + .fa-star-o {
    color: #e64242;
}
.fa-star {
    color: #e64242;
    font-size: 15px;
    }
</style>
<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    
            
              <div class="col-md-2">  
                     <span class="review-author"><?php echo $review['author']; ?></span>
                <span class="review-date-added"><?php echo $review['date_added']; ?></span>
               </div>
              <div class="col-md-9">

      <?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($review['rating'] < $i) { ?>
      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } else { ?>
      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } ?>
      <?php } ?> 
                <p class="review-text"><?php echo $review['text']; ?></p></div>  
         
        

 
     
 </div>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
