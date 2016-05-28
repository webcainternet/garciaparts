<?php echo $header; ?>
<div id="content"><?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="clear"></div>
  <?php echo $content_top; ?>
  <div class="clear"></div>
  <?php echo $column_left; ?>
  <?php echo $column_right; ?>
  <div id="innerpage">
  <h1><?php echo $heading_title; ?></h1>
  <div class="">
  <?php if ($error_warning) { ?>
     <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>