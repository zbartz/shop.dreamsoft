<div class="panel panel-default contactm col-md-offset-3  col-md-6"> 
  <div class="panel-body">
        <div class="col-sm-6 ">
          <p class="text-info_feedback">Телефон</p> 
        <img src="../image/icons8phonefeedback.png" alt=""><a href="tel"> 8-902-996-84-34</a> <br><br>
           <p class="text-info_feedback">E-mail</p> 
           <a href="">vla1597@yandex.ru</a>
        </div>
        <form class="form-horizontal" id="form-contactm">
        <fieldset>
          <div class="form-group required">
            <div class="col-md-12 col-sm-10">
              <label class="placeinput">
    <input required="1" type="text" name="name" value="" id="input-name" class="form-control feedback"/>
    <div class="place_holder "><?php echo $entry_name; ?><span>*</span></div>
</label>
               
            </div>
          </div>
          <div class="form-group required">
            <div class="col-md-12 col-sm-10">
             <label class="placeinput">
    <input required="1" type="email" name="email" value="" id="input-email" class="form-control feedback"/>
    <div class="place_holder "><?php echo $entry_email; ?><span>*</span></div>
</label>
            </div>
          </div>
           <div class="form-group required">
            <div class="col-md-12 col-sm-10">
              <input type="text" name="phone" value="" id="input-phone" class="form-control feedback phone" placeholder="<?php echo $entry_phone; ?>" />
            </div>
          </div>
          <div class="form-group required">
            <div class="col-md-12 col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control feedback" placeholder="<?php echo $entry_enquiry; ?>"></textarea>
            </div>
          </div>

        </fieldset>
        <div class="buttons">
          <div class="text-center">
            <input class="btn submit feedback_button"  value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
  </div>
</div>
</div>
</div>
</div>
<div class="social_ref"> 
        <p class="social-ref"> Расскажите о нашем сайте в соцсетях! <img src="../image/icons8-вконтакте-26@1X.png" alt="" class="img_social"><img src="../image/icons8-instagram-26 копия@1X.png" alt="" class="img_social"> <img src="../image/icons8-facebook-@1X.png" alt="" class="img_social"></p>
        </div>
 <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
 <script>
     $(".phone").mask("+375(99)999-99-99");
 </script>
<script type="text/javascript"><!--

$('.contactm .submit').on('click', function() {
	$.ajax({
		url: 'index.php?route=extension/module/contactm/send',
		type: 'post',
		dataType: 'json',
		data: $("#form-contactm").serialize(),
		beforeSend: function() {},
		complete: function() {},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('.buttons').before('<div class="alert alert-danger col-sm-offset-2 col-sm-10  text-center"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('.buttons').before('<div class="alert alert-success col-sm-offset-2 col-sm-10  text-center"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

			}
		}
	});
});

//--></script>