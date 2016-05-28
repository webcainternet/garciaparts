<?php echo $header; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <a <?php echo(($breadcrumb == end($breadcrumbs)) ? 'class="last"' : ''); ?> href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($simple_page != 'simplecheckout') { ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<?php } ?>
<div id="content" ><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>