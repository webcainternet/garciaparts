<?php echo $header; ?>
<?php echo $content_top; ?>
<div id="content">
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/herbal/stylesheet/simple.css" media="screen" />
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="clear"></div>
<div class="register_form">  
<h1><?php echo $heading_title; ?></h1>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>