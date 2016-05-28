<?php echo $header; ?>
<div id="content">
    <div id="main" class="wrapper clearfix"><?php
        
        /* PAGE HEADER
        ***************/
        ?><div class="pagehead">
            <h1><?php echo $heading_title; ?></h1>
            <div>
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
            </div>
        </div><?php
        
        /* SIDE COLUMNS
        ***************/
        ?><?php echo $column_left; ?>
        <?php echo $column_right; ?><?php
        
        
        /* PAGE CONTENT
        ***************/
        ?><div id="content-body">
        
            <?php if ($error_warning) { ?>
            <div class="warning"><?php echo $error_warning; ?></div>
            <?php } ?>
        
            <?php echo $content_top; ?>