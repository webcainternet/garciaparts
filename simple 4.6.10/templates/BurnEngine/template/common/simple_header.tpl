<?php echo $header; ?>


<?php // Breadcrumbs -------------------------------------------------- ?>

<?php $tbData->slotStart(($simple_page == 'simplecheckout' ? 'checkout/' : 'account/').$simple_page.'.breadcrumbs'); ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<?php $tbData->slotStop(); ?>

<?php // Page title --------------------------------------------------- ?>

<?php $tbData->slotStart(($simple_page == 'simplecheckout' ? 'checkout/' : 'account/').$simple_page.'.page_title'); ?>
<h1><?php echo $heading_title; ?></h1>
<?php $tbData->slotStop(); ?>

<?php // Page content ------------------------------------------------- ?>

<?php $tbData->slotStart(($simple_page == 'simplecheckout' ? 'checkout/' : 'account/').$simple_page.'.page_content'); ?>
<?php if ($error_warning) { ?>
<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
<?php } ?>