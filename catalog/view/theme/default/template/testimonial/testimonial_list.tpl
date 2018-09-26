<style type="text/css">
.rev{
  margin-bottom:  60px;
}
    .horizontal-sreview {
        font-size: 14px;
    }
    .review-author{
      color:  #1f1f1f;
font-size: 18px;
    }
    .horizontal-sreview .review-date-added {
        color: #999;
        /*margin-left: 10px;*/
    }
    .horizontal-sreview-all {
        float: right;
        margin: 0 25px 0 0;
        width: 100%;
        text-align: right;
    }
    .horizontal-sreview {
        border-bottom: 1px solid #ddd;
        margin-bottom: 20px;
        overflow: auto;
    }
    .horizontal-sreview .caption {
        padding: 15px 20px;
        min-height: 100px;
    }
    .sreview-title{
      margin-top: 100px;
      color:  #2435bf;
font-size: 18px;
font-weight: 700;
    }
    .review-text{
       
    }
    .button_new_rev{
      padding: 18px;
      background-color: #e64242;
    }
</style>
<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="horizontal-sreview transition">
            <div class="caption review-caption">
              <div class="col-md-2">  
                <span class="review-author"><?php echo $review['author']; ?></span><br>
                <span class="review-date-added"><?php echo $review['date_added']; ?></span>
               </div>
              <div class="col-md-9"><p class="review-text"><?php echo $review['text']; ?></p></div>  
            </div>
        </div>
    </div>
<?php } ?>
<div class="row">
  <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
</div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
