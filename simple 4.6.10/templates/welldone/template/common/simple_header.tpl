<?php echo $header; ?>
<section class="breadcrumbs  hidden-xs">
<div class="container">
  <ol class="breadcrumb breadcrumb--wd pull-left">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ol>
</div>
</section>

<?php if ($content_top){?>
  <?php echo $content_top; ?>
<?php }?>

<section class="content ">
<div class="container">
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php if ($column_left){?><div class="col-md-3 "><?php echo $column_left;?></div><?php }?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-md-6 '; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 '; ?>
    <?php } else { ?>
    <?php $class = 'col-md-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <h1><?php echo $heading_title; ?></h1>