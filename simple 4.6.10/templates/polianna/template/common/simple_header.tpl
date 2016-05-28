<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div class="breadcrumb">
<div id="wrapper">

    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  </div>
  <div id="wrapper">
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"> <?php echo $content_top; ?><h1><?php echo $heading_title; ?></h1>