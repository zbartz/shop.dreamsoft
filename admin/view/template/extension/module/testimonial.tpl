<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-carousel" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a onclick="$('#apply').attr('value', '1'); $('#form-tm-lite').submit();" data-toggle="tooltip" title="<?php echo $button_apply; ?>" class="btn btn-success"><i class="fa fa-refresh"></i></a>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><i class="fa fa-comments"></i> <?php echo $heading_title; ?><div class="dev-name"><a href="http://vanstudio.co.ua" target="_blank">by vanstudio</a></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-tm-lite" class="form-horizontal">
          <input type="hidden" name="apply" id="apply" value="0">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li><a href="#tab-developer" data-toggle="tab"><i class="fa fa-life-ring"></i> <?php echo $tab_developer; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name) { ?>
                  <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-layout"><?php echo $entry_layout; ?></label>
                <div class="col-sm-10">
                  <select name="layout_id" id="input-layout" class="form-control">
                    <option value="0" <?php if($layout_id==0){ ?>selected="selected"<?php } ?>>Vertical</option>
                    <option value="1" <?php if($layout_id==1){ ?>selected="selected"<?php } ?>>Horizontal</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-order"><?php echo $entry_order; ?></label>
                <div class="col-sm-10">
                  <select name="order" id="input-order" class="form-control">
                    <option value="0" <?php if($order==0){ ?>selected="selected"<?php } ?>>Last</option>
                    <option value="1" <?php if($order==1){ ?>selected="selected"<?php } ?>>Random</option>
                  </select>
                </div>
              </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_limit; ?></label>
                    <div class="col-sm-10">
                        <input type="text" name="limit" value="<?php echo $limit; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-text-limit"><?php echo $entry_text_limit; ?></label>
                    <div class="col-sm-10">
                        <input type="text" name="text_limit" value="<?php echo $text_limit; ?>" placeholder="<?php echo $entry_text_limit; ?>" id="input-text-limit" class="form-control" />
                    </div>
                </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-all-button"><?php echo $entry_button_all; ?></label>
                <div class="col-sm-10">
                  <select name="button_all" id="input-all-button" class="form-control">
                    <option value="1" <?php if ($button_all==1) { ?>selected="selected"<?php } ?>><?php echo $text_enabled; ?></option>
                    <option value="0" <?php if ($button_all==0) { ?>selected="selected"<?php } ?>><?php echo $text_disabled; ?></option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <select name="status" id="input-status" class="form-control">
                    <?php if ($status) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="tab-pane">
                <ul class="nav nav-tabs" id="language">
                  <?php foreach ($languages as $language) { ?>
                  <li>
                    <a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab">
                      <img src="<?php echo file_exists('language/'.$language['code'].'/'.$language['code'].'.png')?'language/'.$language['code'].'/'.$language['code'].'.png':'view/image/flags/'.$language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
                    </a>
                  </li>
                  <?php } ?>
                </ul>
                <div class="tab-content">
                  <?php foreach ($languages as $language) { ?>
                  <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
                      <div class="col-sm-10">
                        <input type="text" name="module_description[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description[$language['language_id']]['title']) ? $module_description[$language['language_id']]['title'] : ''; ?>" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label" for="input-all-text<?php echo $language['language_id']; ?>"><?php echo $entry_all_text; ?></label>
                      <div class="col-sm-10">
                        <input type="text" name="module_description[<?php echo $language['language_id']; ?>][all_text]" placeholder="<?php echo $entry_all_text; ?>" id="input-all-text<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description[$language['language_id']]['all_text']) ? $module_description[$language['language_id']]['all_text'] : ''; ?>" class="form-control" />
                      </div>
                    </div>
                  </div>
                  <?php } ?>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-developer">
              <div class="container-fluid">
                <div class="alert alert-info">
                  <div id="mod-notification"><i class="fa fa-spinner fa-spin"></i> <?php echo $text_load_message; ?></div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
    $('#language a:first').tab('show');
    //--></script>
  <script type="text/javascript"><!--
    function getNotifications() {
      $('#mod-notification').empty().html('<div id="mod-notification"><i class="fa fa-spinner fa-spin"></i> <?php echo $text_load_message; ?></div>');
      setTimeout(
              function(){
                $.ajax({
                  type: 'GET',
                  url: '<?php echo html_entity_decode($notification); ?>',
                  dataType: 'json',
                  success: function(json) {
                    if (json['error']) {
                      $('#mod-notification').empty().html(json['error']+' <span style="cursor:pointer;float:right;" onclick="getNotifications();"><i class="fa fa-refresh"></i> <?php echo $text_retry; ?></span>');
                    } else if (json['message']) {
                      $('#mod-notification').html(json['message']);
                    }
                  },
                  failure: function(){
                    $('#mod-notification').html('<?php echo $error_notification; ?> <span style="cursor:pointer;float:right;" onclick="getNotifications();"><i class="fa fa-refresh"></i> <?php echo $text_retry; ?></span>');
                  },
                  error: function() {
                    $('#mod-notification').html('<?php echo $error_notification; ?> <span style="cursor:pointer;float:right;" onclick="getNotifications();"><i class="fa fa-refresh"></i> <?php echo $text_retry; ?></span>');
                  }
                });
              },
              500
      );
    }

    $(document).ready(function() {
      getNotifications();
    });
    //--></script>
  <style>
    .fa-comments {
      color:#00BFFF;
    }
    .dev-name a{
      color: #CFCFCF;
    }
    .dev-name {
      position: absolute;
      margin-top: 3px;
      margin-left: 200px;
      font-size: 12px;
    }
  </style>
</div>
<?php echo $footer; ?>