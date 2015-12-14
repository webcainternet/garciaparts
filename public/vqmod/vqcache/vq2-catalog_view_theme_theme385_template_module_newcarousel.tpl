<!-- Owl Carousel Assets -->
<link href="/catalog/view/theme/theme385/owl.carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="/catalog/view/theme/theme385/owl.carousel/owl-carousel/owl.theme.css" rel="stylesheet">
<script type="text/javascript" language="javascript" src="/catalog/view/theme/theme385/owl.carousel/owl-carousel/owl.carousel.min.js"></script>
<link href="/catalog/view/theme/theme385/owl.carousel/assets/js/google-code-prettify/prettify.css" rel="stylesheet">

<script>
	jQuery(function(){
		jQuery('#camera_wrap_<?php echo $module; ?>').camera({
			fx: 'stampede',
			navigation: false,
			playPause: false,
			thumbnails: false,
			navigationHover: false,
			barPosition: 'top',
			loader: false,
			time: 3000,
			transPeriod:800,
			alignment: 'center',
			autoAdvance: true,
			mobileAutoAdvance: true,
			barDirection: 'leftToRight', 
			barPosition: 'bottom',
			easing: 'easeInOutExpo',
			fx: 'simpleFade',
			height: '32.86%',
			minHeight: '90px',
			hover: true,
			pagination: true,
			loaderColor			: '#1f1f1f', 
			loaderBgColor		: 'transparent',
			loaderOpacity		: 1,
			loaderPadding		: 0,
			loaderStroke		: 3
			});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
	 
	  var owl = $("#owl-demo");
	 
	  owl.owlCarousel({
	      items : 8, //10 items above 1000px browser width
	      itemsDesktop : [1000,5], //5 items between 1000px and 901px
	      itemsDesktopSmall : [900,3], // betweem 900px and 601px
	      itemsTablet: [600,2], //2 items between 600 and 0
	      itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
	  });
	 
	  // Custom Navigation Events
	  $(".next").click(function(){
	    owl.trigger('owl.next');
	  })
	  $(".prev").click(function(){
	    owl.trigger('owl.prev');
	  })
	  $(".play").click(function(){
	    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
	  })
	  $(".stop").click(function(){
	    owl.trigger('owl.stop');
	  })
	 
	});
</script>
<style type="text/css">
#owl-demo .item{
  padding: 0px 0px;
  height: 131px;
  margin: 10px;
  color: #FFF;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  text-align: center;
}
.customNavigation{
  text-align: center;
}
//use styles below to disable ugly selection
.customNavigation a{
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.owl-pagination, .owl-controls {
	display: none;
}
.nomecarro {
    font-size: 12px;
    text-transform: uppercase;
    text-align: left;
    color: #0C6187;
    font-weight: bold;
}
.imgcarro {
	border: solid 2px #f0f0f0;
    padding: 5px !important;
}
.imgcarro:hover {
	border: solid 2px #0C6187;
}
</style>
<div class="fluid_container">
<div style="position: absolute; top: 0px; width: 100%; z-index: 999999;">
	<div style="background-color: rgba(255,255,255,0.95); height: 167px; width: 1170px; margin: auto;">
		


		<div id="owl-demo" class="owl-carousel owl-theme">
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/gol.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/ecosport.png'); background-size: 100%;"><div class="nomecarro">ecosport</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/fiesta.png'); background-size: 100%;"><div class="nomecarro">fiesta</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/fox.png'); background-size: 100%;"><div class="nomecarro">fox</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/civic.png'); background-size: 100%;"><div class="nomecarro">civic</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/celta.png'); background-size: 100%;"><div class="nomecarro">celta</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/gol.png'); background-size: 100%;"><div class="nomecarro">gol</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corolla.png'); background-size: 100%;"><div class="nomecarro">corolla</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/hilux.png'); background-size: 100%;"><div class="nomecarro">hilux</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		  <div class="item imgcarro" style="background-repeat: no-repeat; background-image: url('/image/carros/corsa.png'); background-size: 100%;"><div class="nomecarro">corsa</div></div>
		</div>
		 
		<div class="customNavigation" style="margin-top: -25px;">
		  <a class="btn prev"><span style="font-size: 12px;">Anterior</span></a>
		  <a class="btn next"><span style="font-size: 12px;">Próximo</span></a>
		</div>


	</div>
</div>

	<div id="camera_wrap_<?php echo $module; ?>">
	<?php foreach ($banners as $banner) { ?>
		<div title="<?php echo $banner['title']; ?>" data-thumb="<?php echo $banner['image']; ?>" <?php if ($banner['link']) { ?> data-link="<?php echo $banner['link']; ?>"<?php } ?> data-src="<?php echo $banner['image']; ?>">

            <?php if ($banner['description']) { ?>
			<div class="camera_caption fadeIn">
				<?php echo $banner['description']; ?>
			</div>
			<?php } ?>
            
		</div>
	<?php } ?>
	</div>
	<div class="clear"></div>
</div>