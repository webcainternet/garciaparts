<?php echo $header; ?>
<div class="container">
 <?php global $config; $general_menu_on_off = $config->get('config_menu_always_open_on_the_left');?>
   <?php if($general_menu_on_off !='1') { ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
    <?php if($i+1<count($breadcrumbs)) { ?> <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li> <?php } else { ?><li><?php echo $breadcrumb['text']; ?></li><?php } ?>
  <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
<?php if($general_menu_on_off =='1') { ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
    <?php if($i+1<count($breadcrumbs)) { ?> <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li> <?php } else { ?><li><?php echo $breadcrumb['text']; ?></li><?php } ?>
  <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <?php } ?>
  <?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>