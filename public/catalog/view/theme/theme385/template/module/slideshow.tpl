<!-- Owl Carousel Assets -->
<link href="/catalog/view/theme/theme385/owl.carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="/catalog/view/theme/theme385/owl.carousel/owl-carousel/owl.theme.css" rel="stylesheet">
<script type="text/javascript" language="javascript" src="/catalog/view/theme/theme385/owl.carousel/owl-carousel/owl.carousel.min.js"></script>
<link href="/catalog/view/theme/theme385/owl.carousel/assets/js/google-code-prettify/prettify.css" rel="stylesheet">

<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
--></script>

<script type="text/javascript">
  $(document).ready(function() {
   
    var owl = $("#owl-demo");
   
    owl.owlCarousel({
        items : 6, //10 items above 1000px browser width
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
  height: 150px;
  margin: 10px;
  color: #FFF;
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
    text-align: center;
    color: #0C6187;
    font-weight: bold;
}
.imgcarro {
  border: solid 0px #FFFFFF;
    padding: 5px !important;
}
.imgcarro:hover {
  border: solid 0px #006089;
}

.imgcarro img{
  transition: all .2s ease-in-out;
  filter: grayscale(100%);
  -webkit-filter: grayscale(100%);
  filter: grayscale(100%);
}
.imgcarro:hover img{
  transform: scale(1.0);
  filter: grayscale(0%);
  -webkit-filter: grayscale(0%);
  filter: grayscale(0%);
}

</style>

<?php /*
<div style=" width: 100%; z-index: 999999;">
  <div style="background-color: rgba(255,255,255,0.95); height: 167px; width: 1170px; margin: auto;">
    


    <div id="owl-demo" class="owl-carousel owl-theme">
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">ecosport</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">fiesta</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">fox</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">civic</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">celta</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">gol</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corolla</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">hilux</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
      <div class="item imgcarro" style="background-repeat: no-repeat; ">
        <img src="http://connectparts.vteximg.com.br/arquivos/carro-carrossel-014.jpg" width="100%">
        <div class="nomecarro">corsa</div>
        

      </div>
    </div>
     
    <div class="customNavigation" style="margin-top: -25px;">
      <a class="btn prev"><span style="font-size: 12px;"><img src="/image/seta-direita.png"></span></a>
    </div>

    <div class="customNavigation" style="margin-top: -25px;">
      <a class="btn next"><span style="font-size: 12px;"><img src="/image/seta-direita.png"></span></a>
    </div>


  </div>
</div>
*/ ?>

<div style="width: 100%; height: 40px; float: left;">&nbsp;</div>