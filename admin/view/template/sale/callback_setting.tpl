<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
 <div class="page-header">
    <div class="container-fluid">
       <div class="pull-right">
      <div class="buttons">
		  <a class="btn btn-primary" onclick="$('#form').submit();" class="button"><span  data-toggle="tooltip" title="<?php echo $button_save; ?>" ><i class="fa fa-save"></i></span></a>
		  <a class="btn btn-default" onclick="location = '<?php echo $cancel; ?>';" class="button"><span  data-toggle="tooltip" title="<?php echo $button_cancel; ?>" ><i class="fa fa-reply"></i></span></a>
	  </div>
    </div>
      <h1><?php echo $heading_title_callback; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
   <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><?php echo $error_warning; ?></div>
  <?php } ?>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_setting_module; ?></h3>
		</div>
	</div>
	<div class="panel-body">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" class="form-horizontal">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab-fields-setting" data-toggle="tab"><?php echo $tab_fields_setting; ?></a></li>
				<li><a href="#tab-general-setting" data-toggle="tab"><?php echo $tab_general_setting; ?></a></li>
				<li><a href="#tab-contact-setting" data-toggle="tab"><?php echo $tab_contact_setting; ?></a></li>
				<li><a href="#tab-design-setting" data-toggle="tab"><?php echo $tab_design_setting; ?></a></li>
				<li><a href="#tab-sms-setting" data-toggle="tab"><?php echo $tab_sms_setting; ?></a></li>
				<li><a href="#tab-email-setting" data-toggle="tab"><?php echo $tab_email_setting; ?></a></li>
			</ul>
			
		<div class="tab-content">
			<div class="tab-pane active" id="tab-fields-setting">
				<div class="form-group">					
					<div class="col-sm-2 title-fields-callback"><?php echo $text_on_off_fields_firstname;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
							<input value="1" type="checkbox" name="callbackpro[config_on_off_fields_firstname_cb]" class="onoffswitch-checkbox" id="config_on_off_fields_firstname_cb" <?php echo isset($callbackpro['config_on_off_fields_firstname_cb']) ? 'checked' : '' ; ?>>
							<label class="onoffswitch-label" for="config_on_off_fields_firstname_cb">
								<span class="onoffswitch-inner"></span>
								<span class="onoffswitch-switch"></span>
							</label>
						</div>
					</div>
				</div>
			
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
							<input value="1" type="checkbox" name="callbackpro[config_fields_firstname_requared_cb]" class="onoffswitch-checkbox" id="config_fields_firstname_requared_cb" <?php echo isset($callbackpro['config_fields_firstname_requared_cb']) ? 'checked' : '' ; ?>>
							<label class="onoffswitch-label" for="config_fields_firstname_requared_cb">
								<span class="onoffswitch-inner"></span>
								<span class="onoffswitch-switch"></span>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[config_placeholder_fields_firstname_cb][<?php echo $language['language_id']; ?>][config_placeholder_fields_firstname_cb]" rows="5" class="form-control" value="<?php echo isset($callbackpro['config_placeholder_fields_firstname_cb'][$language['language_id']]) ? $callbackpro['config_placeholder_fields_firstname_cb'][$language['language_id']]['config_placeholder_fields_firstname_cb'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				
				<!--ПОЛЕ TELEPHONE-->
				<div class="form-group">					
					<div class="col-sm-2 title-fields-callback"><?php echo $text_on_off_fields_phone;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
							<input value="1" type="checkbox" name="callbackpro[config_on_off_fields_phone_cb]" class="onoffswitch-checkbox" id="config_on_off_fields_phone_cb" <?php echo isset($callbackpro['config_on_off_fields_phone_cb']) ? 'checked' : '' ; ?>>
							<label class="onoffswitch-label" for="config_on_off_fields_phone_cb">
								<span class="onoffswitch-inner"></span>
								<span class="onoffswitch-switch"></span>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
						<div class="col-sm-10">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[config_fields_phone_requared_cb]" class="onoffswitch-checkbox" id="config_fields_phone_requared_cb" <?php echo isset($callbackpro['config_fields_phone_requared_cb']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="config_fields_phone_requared_cb">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[config_placeholder_fields_phone_cb][<?php echo $language['language_id']; ?>][config_placeholder_fields_phone_cb]" rows="5" class="form-control" value="<?php echo isset($callbackpro['config_placeholder_fields_phone_cb'][$language['language_id']]) ? $callbackpro['config_placeholder_fields_phone_cb'][$language['language_id']]['config_placeholder_fields_phone_cb'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_mask_phone_number?></label>
					<div class="col-sm-10">
						<input class="form-control" type="text" name="callbackpro[config_mask_phone_number_cb]" value="<?php echo isset($callbackpro['config_mask_phone_number_cb']) ? $callbackpro['config_mask_phone_number_cb'] : ''; ?>" />
					</div>
				</div>
				<!--ПОЛЕ COMMENT-->
				<div class="form-group">					
					<div class="col-sm-2 title-fields-callback"><?php echo $text_on_off_fields_comment;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
						<div class="col-sm-10">
						<div class="onoffswitch">
							<input value="1" type="checkbox" name="callbackpro[config_on_off_fields_comment_cb]" class="onoffswitch-checkbox" id="config_on_off_fields_comment_cb" <?php echo isset($callbackpro['config_on_off_fields_comment_cb']) ? 'checked' : '' ; ?>>
							<label class="onoffswitch-label" for="config_on_off_fields_comment_cb">
								<span class="onoffswitch-inner"></span>
								<span class="onoffswitch-switch"></span>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
							<input value="1" type="checkbox" name="callbackpro[config_fields_comment_requared_cb]" class="onoffswitch-checkbox" id="config_fields_comment_requared_cb" <?php echo isset($callbackpro['config_fields_comment_requared_cb']) ? 'checked' : '' ; ?>>
							<label class="onoffswitch-label" for="config_fields_comment_requared_cb">
								<span class="onoffswitch-inner"></span>
								<span class="onoffswitch-switch"></span>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[config_placeholder_fields_comment_cb][<?php echo $language['language_id']; ?>][config_placeholder_fields_comment_cb]" rows="5" class="form-control" value="<?php echo isset($callbackpro['config_placeholder_fields_comment_cb'][$language['language_id']]) ? $callbackpro['config_placeholder_fields_comment_cb'][$language['language_id']]['config_placeholder_fields_comment_cb'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="clearfix"></div>	
				<!--ПОЛЕ EMAIL-->
				<div class="form-group">					
					<div class="col-sm-2 title-fields-callback"><?php echo $text_on_off_fields_email;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[config_on_off_fields_email_cb]" class="onoffswitch-checkbox" id="config_on_off_fields_email_cb" <?php echo isset($callbackpro['config_on_off_fields_email_cb']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="config_on_off_fields_email_cb">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[config_fields_email_requared_cb]" class="onoffswitch-checkbox" id="config_fields_email_requared_cb" <?php echo isset($callbackpro['config_fields_email_requared_cb']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="config_fields_email_requared_cb">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[config_placeholder_fields_email_cb][<?php echo $language['language_id']; ?>][config_placeholder_fields_email_cb]" rows="5" class="form-control" value="<?php echo isset($callbackpro['config_placeholder_fields_email_cb'][$language['language_id']]) ? $callbackpro['config_placeholder_fields_email_cb'][$language['language_id']]['config_placeholder_fields_email_cb'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
			
			
			<div class="tab-pane" id="tab-general-setting">
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_callback_header; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="callbackpro[csscallback][background_callbackpro_header]" value="<?php echo isset($callbackpro['csscallback']['background_callbackpro_header']) ? $callbackpro['csscallback']['background_callbackpro_header'] : ''; ?>" placeholder="<?php echo $entry_background_callback_header; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_text_color_callback_header; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="callbackpro[csscallback][text_color_callbackpro_header]" value="<?php echo isset($callbackpro['csscallback']['text_color_callbackpro_header']) ? $callbackpro['csscallback']['text_color_callbackpro_header'] : ''; ?>" placeholder="<?php echo $entry_text_color_callback_header; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_icon_callback_header;?></label>
					<div class="col-sm-10">
						<span class="icon_open" id="icon_callbackpro_header" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($callbackpro['icon_callbackpro_header'])) { ?><i class="<?php echo $callbackpro['icon_callbackpro_header']?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="callbackpro[icon_callbackpro_header]" value="<?php echo isset($callbackpro['icon_callbackpro_header']) ? $callbackpro['icon_callbackpro_header'] : ''; ?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_callback_center ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][background_callback_center]" value="<?php echo isset($callbackpro['csscallback']['background_callback_center']) ? $callbackpro['csscallback']['background_callback_center'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo "Контакты фон" ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][background_contact_content]" value="<?php echo isset($callbackpro['csscallback']['background_contact_content']) ? $callbackpro['csscallback']['background_contact_content'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo "Контакты цвет текста" ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][color_contact_content]" value="<?php echo isset($callbackpro['csscallback']['color_contact_content']) ? $callbackpro['csscallback']['color_contact_content'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_boxshadow_img_callback ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][boxshadow_img_callback]" value="<?php echo isset($callbackpro['csscallback']['boxshadow_img_callback']) ? $callbackpro['csscallback']['boxshadow_img_callback'] : '' ?>"  />
					</div>
				</div>	



				
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_callback ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][config_background_callback]" value="<?php echo isset($callbackpro['csscallback']['config_background_callback']) ? $callbackpro['csscallback']['config_background_callback'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_callback_hover ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][config_background_callback_hover]" value="<?php echo isset($callbackpro['csscallback']['config_background_callback_hover']) ? $callbackpro['csscallback']['config_background_callback_hover'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_button_callback ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][config_background_button_callback]" value="<?php echo isset($callbackpro['csscallback']['config_background_button_callback']) ? $callbackpro['csscallback']['config_background_button_callback'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_button_callback_hover ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][config_background_button_callback_hover]" value="<?php echo isset($callbackpro['csscallback']['config_background_button_callback_hover']) ? $callbackpro['csscallback']['config_background_button_callback_hover'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_border_color_button_callback ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][config_border_color_button_callback]" value="<?php echo isset($callbackpro['csscallback']['config_border_color_button_callback']) ? $callbackpro['csscallback']['config_border_color_button_callback'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_border_color_button_callback_hover ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][config_border_color_button_callback_hover]" value="<?php echo isset($callbackpro['csscallback']['config_border_color_button_callback_hover']) ? $callbackpro['csscallback']['config_border_color_button_callback_hover'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_callback_footer ?></label>
					<div class="col-sm-10">
						<input class="form-control color" type="text" name="callbackpro[csscallback][background_callback_footer]" value="<?php echo isset($callbackpro['csscallback']['background_callback_footer']) ? $callbackpro['csscallback']['background_callback_footer'] : '' ?>"  />
					</div>
				</div>
				
				
		</div>
			<div class="tab-pane" id="tab-contact-setting">
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_on_off_date_time;?></label>
					<div class="col-sm-3">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[config_on_off_date_time]" class="onoffswitch-checkbox" id="config_on_off_date_time" <?php echo isset($callbackpro['config_on_off_date_time']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="config_on_off_date_time">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_title_callback_sendthis; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[title_callback][<?php echo $language['language_id']; ?>][text]" rows="5" class="form-control" value="<?php echo isset($callbackpro['title_callback'][$language['language_id']]) ? $callbackpro['title_callback'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_any_text_bottom_before_button; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[config_any_text_bottom_before_button][<?php echo $language['language_id']; ?>][config_any_text_bottom_before_button]" rows="5" class="form-control" value="<?php echo isset($callbackpro['config_any_text_bottom_before_button'][$language['language_id']]) ? $callbackpro['config_any_text_bottom_before_button'][$language['language_id']]['config_any_text_bottom_before_button'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_img_left_callback ?></label>
					<div class="col-sm-3">
						<a href="" id="thumb-imgleft" data-toggle="image" class="img-thumbnail"><img src="<?php echo $main_thumb_callback; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
						<input type="hidden" name="callbackpro[main_image_callback]" value="<?php echo $main_image_callback; ?>" id="input-imgleft" />
					</div>
				</div>	
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_on_off_contact_right;?></label>
					<div class="col-sm-10">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[config_on_off_contact_right]" class="onoffswitch-checkbox" id="config_on_off_contact_right" <?php echo isset($callbackpro['config_on_off_contact_right']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="config_on_off_contact_right">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_title_mob; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[block_name_phone][<?php echo $language['language_id']; ?>][block_name_phone]" rows="5" class="form-control" value="<?php echo isset($callbackpro['block_name_phone'][$language['language_id']]) ? $callbackpro['block_name_phone'][$language['language_id']]['block_name_phone'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				 <?php if($config_phones) { ?>
				  <?php $phone_row = 1;?>
					<?php foreach($config_phones_array as $config_phone) { ?>
					<div class="form-group" id="phone_row<?php echo $phone_row;?>">
						<label class="col-sm-2 control-label" for="input-<?php echo $phone_row;?>-phone-image"><?php echo $entry_mob ?><?php echo $phone_row;?></label>
						<div class="col-sm-2"><a href="" id="thumb-<?php echo $phone_row;?>-phone-image" data-toggle="image" class="img-thumbnail">
						<img src="<?php echo $config_phone['icon_phone']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
							<input type="hidden" name="callbackpro[config_phones][<?php echo $phone_row; ?>][image]" value="<?php echo $config_phone['image']; ?>" id="input-<?php echo $phone_row;?>-phone-image" />
						</div>
						<div class="col-sm-2">
							<input class="form-control" type="text"  name="callbackpro[config_phones][<?php echo $phone_row; ?>][phone]" value="<?php echo $config_phone['phone']; ?>"/>
						</div>
						<div class="col-sm-2">
							<a class="btn btn-danger" onclick="$('#phone_row<?php echo $phone_row;?>').remove();" class="button"><?php echo $text_delete; ?></a>
						</div>
					</div>
					
					
						<?php $phone_row++;?>	
					<?php } ?>
					
				<?php } else { ?>
					<?php $phone_row = 1;?>
				<?php } ?>
				<div class="form-group" id="phone">
					<label class="col-sm-2 control-label"><?php echo $entry_mob ?></label>
					<div class="col-sm-2">
						<a onclick="addPhone();" class="btn btn-primary"><i class="fa fa-plus-circle fa-fw"></i><?php echo $text_add; ?></a></td>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_email ?></label>
					<div class="col-sm-3">
						<input class="form-control" type="text" name="callbackpro[config_email_1]" value="<?php echo isset($callbackpro['config_email_1']) ? $callbackpro['config_email_1'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_skype ?></label>
					<div class="col-sm-3">
						<input class="form-control" type="text" name="callbackpro[skype]" value="<?php echo isset($callbackpro['skype']) ? $callbackpro['skype'] : '' ?>"  />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $time_on_status_skype ?></label>
					<div class="col-sm-3 input-group time">
						<input type="text" class="form-control" name="callbackpro[skype_date_start]" value="<?php echo isset($callbackpro['skype_date_start']) ? $callbackpro['skype_date_start'] : ''; ?>"  data-date-format="HH:mm"/>
						<span class="input-group-btn">
							<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $time_off_status_skype ?></label>
					<div class="col-sm-3 input-group time">
						<input type="text" class="form-control" name="callbackpro[skype_date_end]" value="<?php echo isset($callbackpro['skype_date_end']) ? $callbackpro['skype_date_end'] : ''; ?>"  data-date-format="HH:mm"/>
						<span class="input-group-btn">
							<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $on_off_status_skype;?></label>
					<div class="col-sm-3">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[show_status_skype]" class="onoffswitch-checkbox" id="show_status_skype" <?php echo isset($callbackpro['show_status_skype']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="show_status_skype">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_title_schedule; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[title_schedule][<?php echo $language['language_id']; ?>][text]" rows="5" class="form-control" value="<?php echo isset($callbackpro['title_schedule'][$language['language_id']]) ? $callbackpro['title_schedule'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_daily; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[daily][<?php echo $language['language_id']; ?>][text]" rows="5" class="form-control" value="<?php echo isset($callbackpro['daily'][$language['language_id']]) ? $callbackpro['daily'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_weekend; ?></label>
					<div class="col-sm-3">
					<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
								<input name="callbackpro[weekend][<?php echo $language['language_id']; ?>][text]" rows="5" class="form-control" value="<?php echo isset($callbackpro['weekend'][$language['language_id']]) ? $callbackpro['weekend'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<?php $call_topic = 1;?>
				<?php foreach($call_topic_data as $result) { ?>				
					<div class="form-group" id="call_topic<?php echo $call_topic;?>">	
					<label class="col-sm-2 control-label"><?php echo "№ - " ?><?php echo $call_topic;?></label>									
						<div class="col-sm-2">
							<input class="form-control" type="text" name="callbackpro[call_topic][<?php echo $call_topic; ?>][name]" value="<?php echo $result['name']; ?>"></input>
						</div>
						<div class="col-sm-2">
							<a class="btn btn-danger" onclick="$('#call_topic<?php echo $call_topic;?>').remove();" class="button"><?php echo $text_delete; ?></a>
						</div>						
					</div>					
				<?php $call_topic++;?>	
				<?php } ?>				
				<div class="form-group" id="call_topic">
					<label class="col-sm-2 control-label"><?php echo $text_theme_callback; ?></label>
					<div class="col-sm-2">
						<button type="button" onclick="addCalltopic();" data-toggle="tooltip" title="<?php echo $button_image_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle fa-fw"></i><?php echo $text_add; ?></button>
					</div>
				</div>
					
				<?php $image_row = 1;?>
				<?php foreach($social_icons as $result) { ?>				
					<div class="form-group" id="image-row<?php echo $image_row; ?>">	
					<label class="col-sm-2 control-label"><?php echo "№ - " ?><?php echo $image_row;?></label>							
						<div class="col-sm-2">
							<a href="" id="thumb-image<?php echo $image_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $result['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
							<input type="hidden" name="callbackpro[social_icon][<?php echo $image_row; ?>][image]" value="<?php echo $result['image']; ?>" id="input-image<?php echo $image_row; ?>" />
						</div>
						<div class="col-sm-2">
							<input type="text" name="callbackpro[social_icon][<?php echo $image_row; ?>][name]" value="<?php echo $result['name']; ?>"  class="form-control" />
						</div>	
						<div class="col-sm-2">
							<a class="btn btn-danger" onclick="$('#image-row<?php echo $image_row;?>').remove();" class="button"><?php echo $text_delete; ?></a>
						</div>						
					</div>					
				<?php $image_row++;?>	
				<?php } ?>					
					<div class="form-group" id="social">
						<label class="col-sm-2 control-label"><?php echo $entry_social_callback; ?></label>
						<div class="col-sm-2">
							<button type="button" onclick="addSocialIcon();" data-toggle="tooltip" title="<?php echo $button_image_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle fa-fw"></i><?php echo $text_add; ?></button>
						</div>
					</div>
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;
function addSocialIcon() {
	html  = '<div class="form-group" id="image-row'+ image_row +'">';
	html += '  <label class="col-sm-2 control-label"><?php echo "№ - " ?>'+ image_row+'</label>	';
	html += '  <div class="col-sm-2">';
	html += '  		<a href="" id="thumb-image' + image_row + '"data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /><input type="hidden" name="callbackpro[social_icon][' + image_row + '][image]" value="" id="input-image' + image_row + '" /></a>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += '  		<input type="text" name="callbackpro[social_icon][' + image_row + '][name]" value="" class="form-control" />';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += '  		<button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><?php echo $text_delete; ?></button>';
	html += '  </div>';
	html += '</div>';
	
	$('#social').before(html);
	
	image_row++;
}
var call_topic = <?php echo $call_topic; ?>;
function addCalltopic() {
	html  = '<div class="form-group" id="call_topic'+ call_topic +'">';
	html += '  <label class="col-sm-2 control-label"><?php echo "Тема звонка № - " ?>'+ call_topic +'</label>';
	html += '  <div class="col-sm-2">';
	html += '     <input class="form-control" type="text" name="callbackpro[call_topic]['+ call_topic +'][name]" value="" />';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += '  		<button type="button" onclick="$(\'#call_topic' + call_topic + '\').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>" class="btn btn-danger"><?php echo $text_delete; ?></button>';
	html += '  </div>';
	html += '</div>';
	
	$('#call_topic').before(html);
	
	call_topic++;
}

	$('.time').datetimepicker({
	pickDate: false
});
		
var phone_row = <?php echo $phone_row;?>;
function addPhone() {
	html  = '<div class="form-group" id="phone_row' + phone_row + '">';
	html += '  <label class="col-sm-2 control-label"><?php echo $entry_mob ?>'+ phone_row +'</label>';
	html += '  <div class="col-sm-2">';
	html += '  		<a href="" id="thumb-image-phone'+ phone_row +'" data-toggle="image" class="img-thumbnail">';
	html += '  		<img src="<?php echo $no_image_phone;?>" alt=""/></a>';
	html += '  <input type="hidden" name="callbackpro[config_phones]['+ phone_row +'][image]" value="" id="input-image-phone-'+ phone_row +'" />';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += '  <input class="form-control" type="text"  name="callbackpro[config_phones]['+ phone_row +'][phone]" value=""/>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += ' <a class="btn btn-danger" onclick="$(\'#phone_row' + phone_row + '\').remove();" class="button"><?php echo $text_delete; ?></a>';
	html += '  </div>';
	html += '</div>';	
	$('#phone').before(html);	
	phone_row++;
}
//--></script>			
			</div>
			<div class="tab-pane" id="tab-design-setting">
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_select_design_theme_callback;?></label>
					<div class="col-sm-3">					
						<select class="form-control select_design_theme_callback" onchange="sel(this.value);" name="callbackpro[select_design_theme_callback]">							
								<?php if ($callbackpro['select_design_theme_callback'] == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_design_theme_callback_center;?></option>
								<?php } else { ?>
									<option value="1"><?php echo $text_design_theme_callback_center;?></option>
								<?php } ?>
								<?php if ($callbackpro['select_design_theme_callback'] == 2) { ?>
									<option value="2" selected="selected"><?php echo $text_design_theme_callback_lr;?></option>
								<?php } else { ?>
									<option value="2" ><?php echo $text_design_theme_callback_lr;?></option>
								<?php } ?>								
						</select>
					</div>
				</div>
				<script>
				$(window).load(function(){ 
						var select_design_theme_callback = $('.select_design_theme_callback option:selected').val();						
						if (select_design_theme_callback =='2') {
							$('.rightorleft').toggleClass('active');
						} else if (select_design_theme_callback =='1') {
							$('.rightorleft').removeClass('active');
						}
				})
				function sel(select_design_theme_callback){				
						if (select_design_theme_callback =='2') {
							$('.rightorleft').addClass('active');
						} else if (select_design_theme_callback =='1') {
							$('.rightorleft').removeClass('active');
						}
					}
				</script>
				<style>
					.rightorleft {
						display:none;
					}
					.rightorleft.active {
						display:block;
					}
				</style>
				<div class="form-group rightorleft">
					<label class="col-sm-2 control-label"><?php echo $entry_position_callback;?></label>
					<div class="col-sm-3">					
						<select class="form-control" name="callbackpro[select_design_theme_callback_left_or_right]">							
								
								<?php if ($callbackpro['select_design_theme_callback_left_or_right'] == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_theme2_right;?></option>
								<?php } else { ?>
									<option value="1"><?php echo $text_theme2_right;;?></option>
								<?php } ?>
								<?php if ($callbackpro['select_design_theme_callback_left_or_right'] == 2) { ?>
									<option value="2" selected="selected"><?php echo $text_theme2_left;;?></option>
								<?php } else { ?>
									<option value="2"><?php echo $text_theme2_left;;?></option>
								<?php } ?>								
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_right_callback_position_fixed;?></label>
					<div class="col-sm-3">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[config_right_callback_position_fixed]" class="onoffswitch-checkbox" id="config_right_callback_position_fixed" <?php echo isset($callbackpro['config_right_callback_position_fixed']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="config_right_callback_position_fixed">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_animate_btn;?>1</label>
					<div class="col-sm-1">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[status_animate_btn_1]" class="onoffswitch-checkbox" id="status_animate_btn_1" <?php echo isset($callbackpro['status_animate_btn_1']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="status_animate_btn_1">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
					<div class="col-sm-3">
						<select class="form-control" name="callbackpro[position_animate_btn_1]">
								<option><?php echo $entry_position_callback;?></option>									
								<?php if ($callbackpro['position_animate_btn_1'] == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_position_top_left;?></option>
								<?php } else { ?>
									<option value="1"><?php echo $text_position_top_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_1'] == 2) { ?>
									<option value="2" selected="selected"><?php echo $text_position_center_left;?></option>
								<?php } else { ?>
									<option value="2"><?php echo $text_position_center_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_1'] == 3) { ?>
									<option value="3" selected="selected"><?php echo $text_position_bottom_left;?></option>
								<?php } else { ?>
									<option value="3"><?php echo $text_position_bottom_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_1'] == 4) { ?>
									<option value="4" selected="selected"><?php echo $text_position_top_right;?></option>
								<?php } else { ?>
									<option value="4"><?php echo $text_position_top_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_1'] == 5) { ?>
									<option value="5" selected="selected"><?php echo $text_position_center_right;?></option>
								<?php } else { ?>
									<option value="5"><?php echo $text_position_center_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_1'] == 6) { ?>
									<option value="6" selected="selected"><?php echo $text_position_bottom_right;?></option>
								<?php } else { ?>
									<option value="6"><?php echo $text_position_bottom_right;?></option>
								<?php } ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_animate_btn;?>2</label>
					<div class="col-sm-1">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[status_animate_btn_2]" class="onoffswitch-checkbox" id="status_animate_btn_2" <?php echo isset($callbackpro['status_animate_btn_2']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="status_animate_btn_2">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
					<div class="col-sm-3">
						<select class="form-control" name="callbackpro[position_animate_btn_2]">
								<option><?php echo $entry_position_callback;?></option>									
								<?php if ($callbackpro['position_animate_btn_2'] == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_position_top_left;?></option>
								<?php } else { ?>
									<option value="1"><?php echo $text_position_top_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_2'] == 2) { ?>
									<option value="2" selected="selected"><?php echo $text_position_center_left;?></option>
								<?php } else { ?>
									<option value="2"><?php echo $text_position_center_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_2'] == 3) { ?>
									<option value="3" selected="selected"><?php echo $text_position_bottom_left;?></option>
								<?php } else { ?>
									<option value="3"><?php echo $text_position_bottom_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_2'] == 4) { ?>
									<option value="4" selected="selected"><?php echo $text_position_top_right;?></option>
								<?php } else { ?>
									<option value="4"><?php echo $text_position_top_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_2'] == 5) { ?>
									<option value="5" selected="selected"><?php echo $text_position_center_right;?></option>
								<?php } else { ?>
									<option value="5"><?php echo $text_position_center_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_2'] == 6) { ?>
									<option value="6" selected="selected"><?php echo $text_position_bottom_right;?></option>
								<?php } else { ?>
									<option value="6"><?php echo $text_position_bottom_right;?></option>
								<?php } ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_animate_btn;?>3</label>
					<div class="col-sm-1">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[status_animate_btn_3]" class="onoffswitch-checkbox" id="status_animate_btn_3" <?php echo isset($callbackpro['status_animate_btn_3']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="status_animate_btn_3">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
					<div class="col-sm-3">
						<select class="form-control" name="callbackpro[position_animate_btn_3]">
								<option><?php echo $entry_position_callback;?></option>									
								<?php if ($callbackpro['position_animate_btn_3'] == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_position_top_left;?></option>
								<?php } else { ?>
									<option value="1"><?php echo $text_position_top_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_3'] == 2) { ?>
									<option value="2" selected="selected"><?php echo $text_position_center_left;?></option>
								<?php } else { ?>
									<option value="2"><?php echo $text_position_center_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_3'] == 3) { ?>
									<option value="3" selected="selected"><?php echo $text_position_bottom_left;?></option>
								<?php } else { ?>
									<option value="3"><?php echo $text_position_bottom_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_3'] == 4) { ?>
									<option value="4" selected="selected"><?php echo $text_position_top_right;?></option>
								<?php } else { ?>
									<option value="4"><?php echo $text_position_top_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_3'] == 5) { ?>
									<option value="5" selected="selected"><?php echo $text_position_center_right;?></option>
								<?php } else { ?>
									<option value="5"><?php echo $text_position_center_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_3'] == 6) { ?>
									<option value="6" selected="selected"><?php echo $text_position_bottom_right;?></option>
								<?php } else { ?>
									<option value="6"><?php echo $text_position_bottom_right;?></option>
								<?php } ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_animate_btn;?>4</label>
					<div class="col-sm-1">
						<div class="onoffswitch">
						<input value="1" type="checkbox" name="callbackpro[status_animate_btn_4]" class="onoffswitch-checkbox" id="status_animate_btn_4" <?php echo isset($callbackpro['status_animate_btn_4']) ? 'checked' : '' ; ?>>
						<label class="onoffswitch-label" for="status_animate_btn_4">
							<span class="onoffswitch-inner"></span>
							<span class="onoffswitch-switch"></span>
						</label>
						</div>
					</div>
					<div class="col-sm-3">
						<select class="form-control" name="callbackpro[position_animate_btn_4]">
								<option><?php echo $entry_position_callback;?></option>									
								<?php if ($callbackpro['position_animate_btn_4'] == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_position_top_left;?></option>
								<?php } else { ?>
									<option value="1"><?php echo $text_position_top_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_4'] == 2) { ?>
									<option value="2" selected="selected"><?php echo $text_position_center_left;?></option>
								<?php } else { ?>
									<option value="2"><?php echo $text_position_center_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_4'] == 3) { ?>
									<option value="3" selected="selected"><?php echo $text_position_bottom_left;?></option>
								<?php } else { ?>
									<option value="3"><?php echo $text_position_bottom_left;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_4'] == 4) { ?>
									<option value="4" selected="selected"><?php echo $text_position_top_right;?></option>
								<?php } else { ?>
									<option value="4"><?php echo $text_position_top_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_4'] == 5) { ?>
									<option value="5" selected="selected"><?php echo $text_position_center_right;?></option>
								<?php } else { ?>
									<option value="5"><?php echo $text_position_center_right;?></option>
								<?php } ?>
								<?php if ($callbackpro['position_animate_btn_4'] == 6) { ?>
									<option value="6" selected="selected"><?php echo $text_position_bottom_right;?></option>
								<?php } else { ?>
									<option value="6"><?php echo $text_position_bottom_right;?></option>
								<?php } ?>
						</select>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-sms-setting">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="register_site"><?php echo $register_site; ?></label>
						<div class="col-sm-10">
							<div><a href="http://my.smscab.ru/"><?php echo "http://my.smscab.ru/";?></a></div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $on_off_sms_callback ; ?></label>
						<div class="col-sm-10">
							<div class="onoffswitch">
								<input value="1" type="checkbox" name="callbackpro[config_send_sms_on_off]" class="onoffswitch-checkbox" id="config_send_sms_on_off" <?php echo isset($callbackpro['config_send_sms_on_off']) ? 'checked' : '' ; ?>>
								<label class="onoffswitch-label" for="config_send_sms_on_off">
									<span class="onoffswitch-inner"></span>
									<span class="onoffswitch-switch"></span>
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_phone_number_send_sms ?></label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="callbackpro[config_phone_number_send_sms]" value="<?php echo isset($callbackpro['config_phone_number_send_sms']) ? $callbackpro['config_phone_number_send_sms'] : '' ?>"  />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_login_send_sms ?></label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="callbackpro[config_login_send_sms]" value="<?php echo isset($callbackpro['config_login_send_sms']) ? $callbackpro['config_login_send_sms'] : '' ?>"  />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_pass_send_sms ?></label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="callbackpro[config_pass_send_sms]" value="<?php echo isset($callbackpro['config_pass_send_sms']) ? $callbackpro['config_pass_send_sms'] : '' ?>"  />
						</div>
					</div>				
			</div>
			
			<div class="tab-pane" id="tab-email-setting">
				<div>
						<div class="form-group">					
								<div class="col-sm-5 title-fields-callback"><?php echo $form_latter_from_me_callback;?></div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"><?php echo $text_on_off_send_me_mail_callback;?></label>
							<div class="col-sm-10">
								<div class="onoffswitch">
									<input value="1" type="checkbox" name="callbackpro[config_on_off_send_me_mail_callback]" class="onoffswitch-checkbox" id="config_on_off_send_me_mail_callback" <?php echo isset($callbackpro['config_on_off_send_me_mail_callback']) ? 'checked' : '' ; ?>>
									<label class="onoffswitch-label" for="config_on_off_send_me_mail_callback">
										<span class="onoffswitch-inner"></span>
										<span class="onoffswitch-switch"></span>
									</label>
								</div>
							</div>
						</div>
						<ul class="nav nav-tabs" id="language_me">
							<?php foreach ($languages as $language) { ?>
							<li><a href="#language_me<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
							<?php } ?>
						</ul>
							<div class="tab-content">
								<?php foreach ($languages as $language) { ?>
									<div class="tab-pane" id="language_me<?php echo $language['language_id']; ?>">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="quickorder_subject_me_callback<?php echo $language['language_id']; ?>"><?php echo $callback_subject;?><br /><?php echo $subject_text_variables;?></label>
											<div class="col-sm-10">
												<textarea name="callbackpro[quickorder_subject_me_callback<?php echo $language['language_id'] ?>]" id="quickorder_subject_me_callback<?php echo $language['language_id'] ?>" cols="50" rows="3"><?php echo isset($callbackpro['quickorder_subject_me_callback' . $language['language_id']]) ? $callbackpro['quickorder_subject_me_callback' . $language['language_id']] : ''; ?></textarea>   
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="quickorder_description_me_callback<?php echo $language['language_id']; ?>"><?php echo $quickorder_description_me;?><br /><?php echo $subject_text_variables;?><br /><?php echo $list_of_variables_entry;?></label>
											<div class="col-sm-10">
												<textarea name="callbackpro[quickorder_description_me_callback<?php echo $language['language_id'] ?>]" id="quickorder_description_me_callback<?php echo $language['language_id'] ?>" cols="50" rows="3"><?php echo isset($callbackpro['quickorder_description_me_callback' . $language['language_id']]) ? $callbackpro['quickorder_description_me_callback' . $language['language_id']] : ''; ?></textarea>
											</div>
										</div>
									</div>
								<?php } ?>
							</div>
						<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_you_email_callback?></label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="callbackpro[config_you_email_callback]" value="<?php echo isset($callbackpro['config_you_email_callback']) ? $callbackpro['config_you_email_callback'] : ''; ?>" />
						</div>
					</div>
					</div>
			</div>
	</div>
		</form>
	</div>
  
  
  
</div>
 <script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#quickorder_description_me_callback<?php echo $language['language_id'] ?>').summernote({height: 300});
<?php } ?>
//--></script>
 <script type="text/javascript"><!--
$('#language_me a:first').tab('show');
//--></script>
<link href="view/stylesheet/callbackpro/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen" />
<script src="view/stylesheet/callbackpro/popup.js" type="text/javascript"></script>
<<script type="text/javascript">
	function icon_fontawesome_popup(id) {
		$('.icon_fontawesome_popup').popup('show');
		$('.id_icon').val(id);
		
		$('.icon_fontawesome_popup .fa').on('click', function() {
			var class_this_icon = $(this).attr('class');
			$('.class_icon').val(class_this_icon);
			save_icons_fontawesome();
			$('.icon_fontawesome_popup').popup('hide');
		});
		$('.icon_fontawesome_popup .empty-icon').on('click', function() {
			$('.class_icon').val('');
			save_icons_fontawesome();
			$('.icon_fontawesome_popup').popup('hide');
		});
	}
	
	function save_icons_fontawesome() {
		var id_icon = $('.id_icon').val();
		var class_this_icon = $('.class_icon').val();
		$('#'+id_icon).html('<?php echo $text_select_icon;?> <i class="' + class_this_icon + '"></i>');
		$('#'+id_icon).next().val(class_this_icon);
	}
</script>
<input type="hidden" class="id_icon" name="target" value="" />
<input type="hidden" class="class_icon" name="class" value="" />
<div class="icon_fontawesome_popup">
<div class="icon_fontawesome_list">
<div class="col-xs-1"><i class="empty-icon btn btn-danger">X</i></div>
<div class="col-xs-1"><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-blind" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gitlab" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-universal-access" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wheelchair-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-braille" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-deaf" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpbeginner" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-assistive-listening-systems" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-first-order" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide-g" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-instagram" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpforms" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-audio-description" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-low-vision" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-themeisle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-control-phone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yoast" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-adjust" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-area-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-audio-description" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-university" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-three-quarters" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-beer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell-slash-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-blind" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bomb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-braille" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-building-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-minus-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-camera" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-left" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cart-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-child" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle-thin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cloud" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-code-fork" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comment" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comments" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-creative-commons" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-crosshairs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tachometer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-desktop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-external-link-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fax" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-word-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fire" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flag-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-futbol-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cogs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-scissors-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hashtag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-heart-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bed" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-end" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-start" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-industry" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-key" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-leaf" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-level-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lock" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map-signs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-mobile" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-graduation-cap" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paint-brush" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-phone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pie-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-print" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-random" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-retweet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rss-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shield" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-signal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-smile-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-alpha-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-half-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sticky-note" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sun-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-television" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-right" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trash-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tty" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-university" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-upload" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-user-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wheelchair" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-users" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-unlock" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-television" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tree" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-left" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tags" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sticky-note-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-space-shuttle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-amount-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-futbol-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-in" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ship" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-alt-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-search" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-road" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-recycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-puzzle-piece" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-phone-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-newspaper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-motorcycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-mobile" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-meh-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-low-vision" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lightbulb-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gavel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-keyboard-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-info" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-i-cursor" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-end" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-heartbeat" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hdd-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-spock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-peace-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-users" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gift" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gamepad" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder-open" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bolt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fire-extinguisher" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rss" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eye" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envelope-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-diamond" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-database" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cube" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comments-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comment-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-coffee" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cloud-download" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-right" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-camera-retro" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calculator" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bullhorn" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-briefcase" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-book" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bicycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-quarter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-full" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-empty" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bar-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-car" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-arrows" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-anchor" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-asterisk" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-balance-scale" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bar-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-quarter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-empty" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-three-quarters" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-binoculars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth-b" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bookmark" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bug" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bullseye" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-car" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-certificate" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-clone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cloud-upload" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cog" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-commenting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-compass" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cubes" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-deaf" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dot-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ellipsis-v" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eraser" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eye-slash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-female" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-code-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-film" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flask" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder-open-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gavel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glass" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-headphones" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-history" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-start" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-picture-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-info-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lemon-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-line-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-magic" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply-all" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-microphone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-money" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-mouse-pointer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-picture-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plug" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-qrcode" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-refresh" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rocket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-search-minus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-server" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sitemap" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-amount-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-numeric-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-spinner" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-half-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-street-view" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tablet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tasks" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-toggle-off" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trademark" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trophy" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-umbrella" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-user-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-video-camera" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wifi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wrench" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-control-phone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-user-secret" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-universal-access" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-truck" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-toggle-on" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tint" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ticket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tachometer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-suitcase" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-spoon" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sliders" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-out" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shopping-basket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rss" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply-all" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-registered" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-power-off" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-picture-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-percent" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paw" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-object-ungroup" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-music" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-microphone-slash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map-pin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-male" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-magnet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-location-arrow" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-level-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-laptop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-university" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-inbox" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-home" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-heart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-lizard-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-globe" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cog" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-frown-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flag-checkered" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-filter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-excel-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fighter-jet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eyedropper" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-external-link" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exchange" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envelope" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-download" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cutlery" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-crop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-copyright" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-commenting-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cogs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-code" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle-o-notch" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-times-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-check-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-building" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bolt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-birthday-cake" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell-slash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bed" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-full" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-barcode" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ban" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-at" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-arrows-v" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-archive" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-right" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-lizard-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-scissors-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-left" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-peace-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-spock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ambulance" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-subway" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-car" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rocket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bicycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fighter-jet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ship" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-train" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-motorcycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-space-shuttle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-truck" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-excel-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-word-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-text" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-text-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-code-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-amex" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-diners-club" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-discover" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-stripe" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-wallet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-jcb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-visa" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-usd" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gg" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-jpy" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rub" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gbp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eur" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eur" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-angellist" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bitbucket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-amex" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-chrome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-contao" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-deviantart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-drupal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-expeditedssl" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flickr" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-forumbee" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gg" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-github" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gratipay" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-wallet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-html5" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-joomla" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-leanpub" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-maxcdn" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-modx" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-openid" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pinterest" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-qq" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reddit-alien" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-safari" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-alt-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-skype" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stack-exchange" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stumbleupon" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trello" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-twitch" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vimeo-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-weibo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-windows" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-xing" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yahoo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yoast" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-youtube" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-y-combinator" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-xing-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wordpress" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-weixin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vine" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-twitter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tripadvisor" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stumbleupon-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stack-overflow" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-slack" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shirtsinbulk" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-scribd" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reddit-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rebel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pinterest-p" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-opera" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-odnoklassniki" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-meanpath" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-jsfiddle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-instagram" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gratipay" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-github-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gg-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-foursquare" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-edge" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-css3" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-codepen" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-diners-club" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth-b" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bitbucket-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-apple" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-adn" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-amazon" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-behance" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-btc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-discover" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-stripe" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-codiepie" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dashcube" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dribbble" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-empire" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-firefox" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fonticons" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-empire" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-github-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide-g" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hacker-news" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-internet-explorer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lastfm" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-linkedin-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-medium" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-odnoklassniki-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-optin-monster" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pinterest-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rebel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-renren" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-simplybuilt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sellsy" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-slideshare" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-soundcloud" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-steam" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tencent-weibo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tumblr" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-twitter-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vk" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-whatsapp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpbeginner" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-y-combinator" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hacker-news" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-youtube-play" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-youtube-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yelp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hacker-news" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpforms" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wikipedia-w" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-weixin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vimeo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-usb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tumblr-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-themeisle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-steam-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-spotify" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-skyatlas" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rebel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-product-hunt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-product-hunt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper-pp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pagelines" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-opencart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-linux" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lastfm-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ioxhost" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-houzz" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gitlab" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-get-pocket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-git-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fort-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-first-order" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envira" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dropbox" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-delicious" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-connectdevelop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-jcb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-buysellads" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-black-tie" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-behance-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-android" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-visa" aria-hidden="true"></i></div>
</div>
</div>
<?php echo $footer; ?>
