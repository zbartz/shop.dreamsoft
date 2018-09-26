<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <div class="row"> 
        <div id="content" class="<?php echo $class; ?>"> 
           
            <form class="form-horizontal" id="form-review">
                <?php if ($review_status) { ?>
               
                <?php if ($review_guest) { ?>
                <h2><?php echo $text_write; ?></h2>
                <div class="form-group required">
                    <div class="col-md-2 col-sm-10">
            
                    <div class="col-sm-12">
                        <label class="placeinput">
                            <input required="1" type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control feedback"/>
                             <div class="place_holder ">Ваше имя<span>*</span></div>
                        </label>
                    </div>
                     <div class="col-sm-12">
                        <label class="placeinput">
                            <input  required="1" type="text" name="rating" value="<?php echo $customer_name; ?>" id="input-rating" class="form-control feedback"/>
                             <div class="place_holder ">Ваш Email<span>*</span></div>
                        </label>
                    </div>
                </div>
                  <div class="col-sm-10">
                        <textarea name="text" rows="5" id="input-review" class="form-control feedback" placeholder="<?php echo $entry_review; ?>"></textarea>

                        <div class="help-block"><?php echo $text_note; ?></div>
                    </div>
            </div>
               
                <?php if (isset($site_key) && $site_key) { ?>
                <div class="form-group">
                    <div class="col-sm-12">
                        <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    </div>
                </div>
                <?php } elseif(isset($captcha) && $captcha){ ?>
                <?php echo $captcha; ?>
                <?php } ?>
                <div class="buttons col-sm-6 col-md-12 clearfix">
                    <div class="pull-right">
                        <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>"
                                class="btn feedback_button"><?php echo $button_continue; ?></button>
                    </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
               

            </form>
             <div id="review"></div>
              <?php } ?>
            </div>
      </div>

    <script type="text/javascript"><!--
        $('#review').delegate('.pagination a', 'click', function (e) {
            e.preventDefault();
            $('#review').load(this.href);
        });

        $('#review').load('<?php echo html_entity_decode($review); ?>');

        $('#button-review').on('click', function () {
            $.ajax({
                url: '<?php echo html_entity_decode($write); ?>',
                type: 'post',
                dataType: 'json',
                data:  $("#form-review").serialize(),
                beforeSend: function () {
                    if ($("textarea").is("#g-recaptcha-response")) {
                        grecaptcha.reset();
                    }
                    $('#button-review').button('loading');
                },
                complete: function () {
                    $('#button-review').button('reset');
                },
                success: function (json) {
                    $('.alert-success, .alert-danger').remove();
                    if (json['error']) {
                        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                    }
                    if (json['success']) {
                        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                        $('input[name=\'name\']').val('');
                        $('textarea[name=\'text\']').val('');
                       $('input[name=\'rating\']').val('');
                    }
                }
            });
        });
        //--></script>
</div>
<?php echo $footer; ?>