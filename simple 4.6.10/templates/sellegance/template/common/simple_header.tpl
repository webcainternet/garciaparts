<?php echo $header; ?>

	<?php echo $content_top; ?>
	
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	 <header class="heading">
		
		<h1><?php echo $heading_title; ?></h1>
		<?php if ($error_warning) { ?>
			<div class="alert warning"><?php echo $error_warning; ?></div>
		<?php } ?>

	</header>

	<?php 
	
	if ($column_left || $column_right) { $main = "span9"; } 
	else { 	$main = "span12"; } 

	?>

	<div class="row-fluid">

		<?php echo $column_left; ?>

		<section id="maincontent" class="<?php echo $main; ?>" role="main">

			<div class="mainborder">

				<?php if ($column_left) { ?>
					<div id="toggle_sidebar"></div>
				<?php } ?>

				