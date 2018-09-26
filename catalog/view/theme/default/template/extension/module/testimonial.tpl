<?php if($layout==1){ ?>
<style type="text/css">
.rev{
	margin-bottom: 	60px;
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
        margin-left: 0px;
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
<?php if($heading_title){ ?> 
<h3 class="sreview-title"><?php echo $heading_title; ?></h3>
<?php } ?>
<div class="row rev">
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
    <?php if($button_all){ ?>
    <div class="horizontal-sreview-all"><a  class="button_new_rev" href="<?php echo $keyword; ?>"><?php echo $button_all_text; ?></a></div>
    <?php } ?>
</div>
<?php }else{ ?>
<style type="text/css">
    .vertical-sreview .review-author {
        font-size: 14px;
    }
    .vertical-sreview .review-date-added {
        color: #999;
     
    }
    .vertical-sreview-all {
        float: right;
        margin: 0px 25px 0px 0px;
        width: 100%;
        text-align: right;
    }
    .vertical-sreview {
        border: 1px solid #ddd;
        margin-bottom: 20px;
        overflow: auto;
    }
    .vertical-sreview .caption {
        padding: 15px 20px;
        min-height: 100px;
    }
</style>
<?php if($heading_title){ ?>
<h3><?php echo $heading_title; ?></h3>
<?php } ?>
<div class="row">
    <?php foreach ($reviews as $review) { ?>
    <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <div class="vertical-sreview transition">
            <div class="caption review-caption">
                <span class="review-author"><?php echo $review['author']; ?></span>
                    
                <span class="review-date-added"><?php echo $review['date_added']; ?></span>
              <!--  <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($review['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"
                                             style='color: #FC0'></i></span>
                    <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"
                                             style='color: #FC0;'></i><i
                            class="fa fa-star-o fa-stack-2x"
                            style='color: #E69500;'></i></span>
                    <?php } ?>
                    <?php } ?>
                </div>-->
                <p><?php echo $review['text']; ?></p>
            </div>
        </div>
    </div>
    <?php } ?>
    <?php if($button_all){ ?>
    <div class="vertical-sreview-all"><a href="<?php echo $keyword; ?>"><?php echo $button_all_text; ?></a></div>
    <?php } ?>
</div>
<?php } ?>