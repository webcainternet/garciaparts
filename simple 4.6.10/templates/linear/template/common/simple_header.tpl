<?php 
      $this->language->load('linear'); // EDIT: CUSTOM LANGUAGE FILE
$breadcrumb_text = $this->language->get('breadcrumb_text');?>
<?php echo $header; ?><?php echo $content_top; ?>
<!-- start breadcrumb -->

<div class="breadcrumb"> 
  <!-- start box -->
  <div class="box-default"> <span><?php echo $breadcrumb_text; ?></span>
    <ul>
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <!-- end box -->
  <div class="clear"></div>
</div>
<!-- end breadcrumb -->
<div class="topline"></div>
<div class="box-default">
<div id="leftcol" class="medium forgottenpage"> <?php echo $column_left; ?>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>