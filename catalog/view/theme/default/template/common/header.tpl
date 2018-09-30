<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
  <div class="floating-form" id="contact_form">
<div class="contact-opener">
    <span class="glyphicon glyphicon-phone-alt"></span>
    обратный звонок</div>
    <div class="floating-form-heading">Закажите обратный звонок</div>
    <div id="contact_body">
        <label><span>Ваше имя <span class="required">*</span></span>

          <input type="text" name="name" id="name" required="required" class="input-field form-control feedback">
        </label>
        <label><span>Телефон<span class="required">*</span></span>
   
          <input type="text" name="phone2" maxlength="20" required="required" class="input-field form-control feedback phone">
        </label>
        <label><span>Сообщение</span>
          <textarea name="message" id="message" class="textarea-field form-control feedback"></textarea>
        </label>
        <label>
          <span> </span><input type="submit" id="submit_btn" value="отправить">
        </label>
    </div>
</div>
<nav id="top">
  <div class="container">  
    <div class="row">
     <!-- <div class="col-md-12">
        <p>Электро-инструмент отечественного производства, для стройки, ремонта и своего хозяйства</p>
      </div>-->
      <div class="col-sm-2">
        <div id="logo">
          <?php if ($logo) { ?>
            <?php if ($home == $og_url) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive logo_new" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive logo_new" /></a>
            <?php } ?>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
    <?php echo $language; ?>
   
    <div id="top-links" class="nav pull-left">
      <ul class="list-inline">
      <!--  <li><a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" ><img src="../image/icons8-marker-50.png" class="" alt="Адрес Диолд мастер"> <span class="  hidden-sm"><?php echo $address; ?></span></a></li>-->
       <!-- <li><span class="   "><?php echo $geoip; ?></span></li>-->
       <li><span>Электро-инструмент отечественного производства</span><br><span> для стройки, ремонта и своего хозяйства</span></li>
        <li><span class="open_new"><?php echo $open; ?></span><span class=" ">Приём заказов круглосуточно</span></li>
        <li><a href="tel:+2312312312"><img src="../image/tele_icon.png" alt=""> <span class="  tele_new"><?php echo $telephone; ?></a></span> 
          <div class= "div3">
            <a href="viber://chat?number=380957225442" class="sociallinks_new"><img src="../image/icons8-viber-filled-50.png" alt="Диолд мастер в viber" /></a>
            <a href="https://api.whatsapp.com/send?phone=380951267232" class="sociallinks_new"><img src="../image/icons8-whatsapp-48.png" alt="Диолд мастер в whatsapp" /></a>
           <a href="skype:username?call" class="sociallinks_new"><img src="../image/icons8-skype-48.png" alt="Диолд мастер в skype" /></a>
              <a href="tg://resolve?domain= " class="sociallinks_new"><img src="../image/icons8-telegram-app-48.png" alt="Диолд мастер в telegram" /></a>
          </div>
     
      <!-- <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li> 
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li> -->
      </ul>

    </div>
  </div>
  </div>
</nav>
 <?php if ($categories) { ?>
 <nav id="red" class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>

            </button>  

        </div>
        <div class="collapse navbar-collapse menu_red" id="bs-example-navbar-collapse-1">
            <ul class="nav nav-pills">
                <li class="dropdown"><a id="drop4" href="http://shop.dreamsoft/catalogue">Каталог</a>
          <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
            <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="<?php echo $category['href']; ?>" target="_blank"><?php echo $category['name']; ?></a></li>
              <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            
  

        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
        <?php } ?>
          </ul>
        </li>
                 <li class="item-header-menu"><a href="http://shop.dreamsoft/delivery">Доставка и оплата</a></li>
         <li class="item-header-menu"><a href="http://shop.dreamsoft/about_us">О производителе</a></li>
         <li class="item-header-menu"><a href="http://shop.dreamsoft/news">Новости</a></li>
         <li class="item-header-menu"><a href="http://shop.dreamsoft/article">Статьи</a></li>
     <li class="item-header-menu"><a href="http://shop.dreamsoft/contacts">Контакты</a></li> 
    <li class="currency"> <?php echo $currency;?> </li>
 
            </ul>
        </div>
    </div>
</nav>
    <?php } ?>
<header class="search">
  <div class="container">
    <div class="row searc_padd">
    	  <div class="col-sm-7"><?php echo $search; ?>
      </div>
      <div class="col-sm-2"><a href="<?php echo $compare; ?>" id="compare-total" title="<?php echo $text_compare; ?>"><span class=""><?php echo $text_compare; ?></span></a></div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
      <div class="popular_categories col-sm-12">
        <span>Популярные категории: <a href="">мотокосы</a>, <a href="">дрели</a>, <a href="">культиваторы</a></span>
      </div>
    </div>
  </div>
</header>
      <!--<div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
            <?php if ($home == $og_url) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } ?>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>-->
    
<!--<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>-->
<script>
	jQuery('ul.nav > li').hover(function() {
jQuery(this).find('.dropdown-menu').stop(true, true).delay(10).fadeIn();
}, function() {
jQuery(this).find('.dropdown-menu').stop(true, true).delay(10).fadeOut();
});
</script>
<script type="text/javascript" src="http://shop.dreamsoft/catalog/view/javascript/validator.min.js"></script>
<script type="text/javascript" src="http://shop.dreamsoft/catalog/view/javascript/form-scripts.js"></script>