<?php echo $header; ?>
<div class="container-page"> <!-- start container page -->
    <div class="breadcrumb">
        <div class="layout"> <!-- start layout -->
            <h1><?php echo $heading_title; ?></h1>
            <div class="links">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
            </div>
        </div> <!-- end layout -->
    </div>
    <div class="layout layout-left-plus-right"> <!-- start layout -->
        <div class="container-center"> <!-- start container center -->
            <div class="content-page"> <!-- start content page -->
                <?php echo $content_top; ?>