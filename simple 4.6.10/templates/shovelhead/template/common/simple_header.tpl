<?php echo $header; ?>

<div class="container columns">

    <ul class="breadcrumb">

        <?php foreach ($breadcrumbs as $breadcrumb) { ?>

        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>

        <?php } ?>

    </ul>

    <div class="row"><?php echo $column_left; ?>

        <?php if ($column_left && $column_right) { ?>

        <?php $class = 'col-sm-4 col-md-6'; ?>

        <?php } elseif ($column_left || $column_right) { ?>

        <?php $class = 'col-sm-8 col-md-9 '; ?>

        <?php } else { ?>

        <?php $class = 'col-sm-12'; ?>

        <?php } ?>

        <div class="<?php echo $class; ?>">

            <section id="content">

                <?php if ($error_warning) { ?>

                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>

                <?php } ?>

                <?php echo $content_top; ?>

                <h1><?php echo $heading_title; ?></h1>