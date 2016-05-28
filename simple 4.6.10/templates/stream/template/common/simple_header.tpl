<?php echo $header; ?>
    <?php $themeSettings =  $this->config->get('themecontrol');  ?>
    </div>
    </div>
    </header>
      <!-- end: header.tpl -->
    <div class="row clearfix"></div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
         <div class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
            <!-- Quick Help for tablets and large screens -->
            <div class="quick-message hidden-xs">
              <div class="quick-box">
                <div class="quick-slide"><span class="title"><?php echo $this->language->get( 'text_help' ); ?></span>
                  <div class="quickbox slide" id="quickbox">
                    <div class="carousel-inner">
                      <div class="item active"> <a href="index.php?route=information/contact"> <i class="fa fa-envelope fa-fw"></i> <?php echo $this->language->get('text_contact'); ?></a> </div>
                      <div class="item">        <a href="index.php?route=information/information&information_id=4"> <i class="fa fa-question-circle fa-fw"></i><?php echo $this->language->get('text_information'); ?></a> </div>
                      <div class="item">        <a href="#"> <i class="fa fa-phone fa-fw"></i> <?php echo $this->config->get('config_telephone'); ?></a> </div>
                    </div>
                  </div>
                  <a class="left carousel-control" data-slide="prev" href="#quickbox"> <i class="fa fa-angle-left fa-fw"></i> </a> <a class="right carousel-control" data-slide="next" href="#quickbox"> <i class="fa fa-angle-right fa-fw"></i> </a> </div>
              </div>
            </div>
            <!-- end: Quick Help -->
        </div>
      </div>
    </div>
    <div class="row clearfix f-space20"></div>
    <?php if(isset($themeSettings['homelayoutstyle']) && ($themeSettings['homelayoutstyle'] == 'disable')){ ?>
    <div class="container">
    <?php } ?>
    <?php echo $content_top; ?>
    <?php if(isset($themeSettings['homelayoutstyle']) && ($themeSettings['homelayoutstyle'] == 'disable')){ ?>
    </div>
    <?php } ?>
    <div class="container">
    <?php if ($error_warning) { ?>
        <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <!-- row -->
    <div class="row">
    <!-- Column left start -->
    <?php echo $column_left; ?>
    <!-- end: left right -->
    <div class="<?php if(isset($themeSettings['accpagelayout']) && $themeSettings['accpagelayout']!=''){ echo $themeSettings['accpagelayout']; } else { echo 'col-md-9'; }?> col-sm-12 col-xs-12 content-block account-pages">
    <div class="page-title">
        <h2><?php echo $heading_title; ?></h2>
      </div>
    <div class="row clearfix f-space20"></div>
    <div id="content">