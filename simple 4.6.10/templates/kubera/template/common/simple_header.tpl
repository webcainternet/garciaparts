<?php echo $header; ?>
<!-- START CONTENT PAGE -->
<div class="content-page">
    <div class="align">
        <?php if($this->config->get('kb_layout_all') == '1' || $this->config->get('kb_layout_all') == '3') { ?>
        <!-- START CONTENT TOP FIRST -->
        <div class="content-top content-top-first">
            <?php echo $content_top; ?>
        </div>
        <!-- END CONTENT TOP FIRST -->
        <?php } ?>
        <!-- START SIDEBAR -->
        <?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- END SIDEBAR -->
        <!-- START CONTENT CENTER -->
        <div class="content-center">
            <!-- START BREADCRUMB -->
            <div class="breadcrumb<?php if($this->config->get('kb_breadcrumb') != '') { ?> <?php echo $this->config->get('kb_breadcrumb'); ?><?php } ?>">
                <h1><?php echo $heading_title; ?></h1>
                <h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>" title="<?php echo $breadcrumb['text']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>
            <!-- END BREADCRUMB -->
            <!-- START CONTENT TOP -->
            <div class="content-top">
            <?php if($this->config->get('kb_layout_all') == '' || $this->config->get('kb_layout_all') == '2') { ?>
                <?php echo $content_top; ?>
            <?php } ?>
            </div>
            <!-- END CONTENT TOP -->
            <!-- START CONTENT ALIGN -->
            <div class="content-align">
                <?php if ($error_warning) { ?>
                <div class="notification warning">
                    <p class="iconp"><i class="icon-warning-sign"></i></p>
                    <p><?php echo $error_warning; ?></p>
                </div>
                <?php } ?>