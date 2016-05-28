<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>
<div id="breadcrumb">
  <div class="container">
    <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>

  </div>
</div>
<div id="group-content">
<?php if( $SPAN[0] ): ?>
    <div class="span<?php echo $SPAN[0];?>">
        <?php echo $column_left; ?>
    </div>
<?php endif; ?> 
<div class="span<?php echo $SPAN[1];?>">
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content"><?php echo $content_top; ?>
  
    <h1 class="title-category"><?php echo $heading_title; ?></h1>