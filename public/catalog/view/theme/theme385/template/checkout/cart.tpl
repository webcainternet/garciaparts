<?php echo $header; ?>

<style type="text/css">
	.table-bordered > thead > tr > th, .table-bordered > tbody > tr > th, .table-bordered > tfoot > tr > th, .table-bordered > thead > tr > td, .table-bordered > tbody > tr > td, .table-bordered > tfoot > tr > td {
     border: 0px;
}
.name a {
    font-weight: 400;
}
.table .total, .table .price {
    font-weight: normal;
}
</style>

<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-9<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?>
	<?php if ($weight) { ?>
	&nbsp;(<?php echo $weight; ?>)
	<?php } ?>
  </h1>
  <?php if ($attention) { ?>
  <div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/theme385/image/remove-small.png" alt="" class="close" /></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?><img src="catalog/view/theme/theme385/image/remove-small.png" alt="" class="close" /></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/theme385/image/remove-small.png" alt="" class="close" /></div>
  <?php } ?>
  <form id="form-cart" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
	<div class="cart-info">
	  <div class="shop-cart">
	  <table class="table table-bordered ">
		<thead>
		  <tr>
			<td class="image"><?php echo $column_image; ?></td>
			<td class="name"><?php echo $column_name; ?></td>
			<td class="model"><?php echo $column_model; ?></td>
			<td class="quantity"><?php echo $column_quantity; ?></td>
			<td class="price-td"><?php echo $column_price; ?></td>
			<td class="total-td" style="border-right:none;"><?php echo $column_total; ?></td>
		  </tr>
		</thead>
  
		<tbody>
		  <?php foreach ($products as $product) { ?>
			<?php if(!empty($product['recurring'])): ?>
              <tr>
                  <td colspan="6" style="border:none;"><image src="catalog/view/theme/theme385/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
                      <strong><?php echo $text_recurring_item ?></strong>
                      <?php echo $product['profile_description'] ?>
                  </td>
                </tr>
            <?php endif; ?>
		  <tr>
			<td class="image"><?php if ($product['thumb']) { ?>
			  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
			  <?php } ?></td>
			<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
			  <?php if (!$product['stock']) { ?>
			  <span class="stock">***</span>
			  <?php } ?>
			  <div>
				<?php foreach ($product['option'] as $option) { ?>
				- <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
				<?php } ?>
				<?php if (!empty($product['recurring'])): ?>
                - <small><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
                <?php endif; ?>
			  </div>
			  <?php if ($product['reward']) { ?>
			  <small><?php echo $product['reward']; ?></small>
			  <?php } ?></td>
			<td class="model"><?php echo $product['model']; ?></td>
			<td class="quantity"><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
			  
			  <div class="wrapper mt5">
			  <!--<input class="input-update" type="submit"  alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />-->
			  <a class="input-update" onClick="document.getElementById('form-cart').submit()" ><i class=" fa fa-refresh"></i></a>
			  &nbsp;<a href="<?php echo $product['remove']; ?>"><!--<img src="catalog/view/theme/theme385/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" />--><i class="fa fa-trash-o-o"></i></a>
			  </div>
			  </td>
			<td class="price"><?php echo $product['price']; ?></td>
			<td class="total"><?php echo $product['total']; ?></td>
		  </tr>
		  <?php } ?>
		  <?php foreach ($vouchers as $vouchers) { ?>
		  <tr>
			<td class="image"></td>
			<td class="name"><?php echo $vouchers['description']; ?></td>
			<td class="model"></td>
			<td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
			  &nbsp;<div class="wrapper mt5"><a href="<?php echo $vouchers['remove']; ?>"><i class="fa fa-trash-o-o"></i></a></div></td>
			<td class="price"><?php echo $vouchers['amount']; ?></td>
			<td class="total"><?php echo $vouchers['amount']; ?></td>
		  </tr>
		  <?php } ?>
		</tbody>
	  </table>
		  </div>
	</div>
  </form>
  <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
   <h2><?php echo $text_next; ?></h2>
  <div class="content shop-cart-content" style="float: left; width: 50%; display: none;">
   
	<p><?php echo $text_next_choice; ?></p>
	<table class="radio table table-bordered table-hover" style="border: 0px !important;">
	  <?php if ($coupon_status) { ?>
	  <tr class="highlight">
			<td style="border: 0px;"><div class="radio"><label  for="use_coupon"><input type="radio" name="next" value="coupon" id="use_coupon" /><?php echo $text_use_coupon; ?></label></div></td>
	  </tr>
	  <?php } ?>
	  <?php if ($voucher_status) { ?>
	  <tr class="highlight">
		 <td style="border: 0px;"><div class="radio"><label  for="use_voucher"><input type="radio" name="next" value="voucher" id="use_voucher" /><?php echo $text_use_voucher; ?></label></div></td>
	  </tr>
	  <?php } ?>
	  <?php if ($reward_status) { ?>
	  <tr class="highlight">
		
		<td style="border: 0px;"><div class="radio"><label  for="use_reward"><input type="radio" name="next" value="reward" id="use_reward" /><?php echo $text_use_reward; ?></label></div></td>
	  </tr>
	  <?php } ?>
	  <?php if ($shipping_status) { ?>
	  <tr class="highlight">
		
		<td style="border: 0px;"><div class="radio"><label  for="shipping_estimate"><input type="radio" name="next" value="shipping" id="shipping_estimate" /><?php echo $text_shipping_estimate; ?></label></div></td>
	  </tr>
	  <?php } ?>
	</table>
  </div>
  <div class="cart-module" style="float: left; width: 50%;">
	<div id="coupon" class="content" style="padding: 0px;">

		<form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coup">

			<div class="form-group">
				<label class="control-label col-sm-5" style="text-align: left; width: 100%;" for="coupon"><?php echo $entry_coupon; ?>&nbsp;</label>
				<div class="controls col-sm-7">
					<input type="text" name="coupon" value="<?php echo $coupon; ?>" style="margin: 10px 0px;" />
					<input type="hidden" name="next" value="coupon" />&nbsp;

					<a onclick="$('#coup').submit();" class="button" style="background-color: #999"><span>Aplicar Cupom</span></a>
				</div>
			</div>
		</form>
	</div>
	<div id="voucher" class="content" style="display: none;">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="gift" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-5" for="voucher"><?php echo $entry_voucher; ?>&nbsp;</label>
				<div class="controls col-sm-7">
					<input type="text" name="voucher" value="<?php echo $voucher; ?>" />
					<input type="hidden" name="next" value="voucher" />
					&nbsp;
					<a onclick="$('#gift').submit();" class="button-cont-right"><?php echo $button_voucher; ?><i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			
			
		</form>
	</div>
	<div id="reward" class="content" style="display: none;">
		<form class="form-horizontal"  action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="rew">
			<div class="form-group">
				<label class="control-label col-sm-5" for="reward"><?php echo $entry_reward; ?>&nbsp;</label>
				<div class="controls col-sm-7">
					<input type="text" name="reward" value="<?php echo $reward; ?>" />
					<input type="hidden" name="next" value="reward" />
					&nbsp;
					<a onclick="$('#rew').submit();" class="button-cont-right"><?php echo $button_reward; ?><i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
		</form>
	</div>	
</div>
	<?php } ?>
  
  <div class="cart-bottom" style="float: left; width: 50%; margin-top: -20px;">

  	<div id="shipping" class="content">
	  <p><?php echo $text_shipping_detail; ?></p>

		<div class="controls col-sm-7" style="display: none;">
			<select name="country_id">
				<option value="30" selected="selected">Brazil</option>
			</select>
		</div>

		<div class="controls col-sm-7" style="display: none;">
			<select name="zone_id">
				<option value="464">São Paulo</option>
			</select>
		</div>

		<div>
			<input style="margin: 10px 0px;" type="text" name="postcode" value="<?php echo $postcode; ?>" />
		</div>

		<div class="controls">
			<a id="button-quote" class="button" style="background-color: #999"><span><?php echo $button_quote; ?></span></a>
		</div>

	  </div>

	<div class="cart-total" style="margin-top: 10px; background: #f9f9f9;">
	<table id="total" class="table table-bordered" style="border: 0px;">
	  <?php $count =0; foreach ($totals as $total) { $count +=1; if ($total == end($totals)) {$a='last';} else {$a='';} ?>
	  <tr class="row-table-<?php echo $count; ?>" style="line-height: 0;">
		<td class="right cart-total-name <?php echo $a;?>" style="border: 0px; background-color: #f9f9f9; line-height: 0; color: #333;"><b><?php echo $total['title']; ?>:</b></td>
		<td class="right cart-total1 <?php echo $a;?>" style="border: 0px; background-color: #f9f9f9; line-height: 0; padding-left: 30px;">
<?php if ($total['title'] == 'Total') {

 $qtd_parcelas = 5;
 $juros = 0;
 $moeda_da_loja = 'R$ ';
 $tipo_de_calculo = 0;
 $parcela_minima = 5.00;

$preco_numero = str_replace(',','.',str_replace('.','', str_replace($moeda_da_loja,"",strip_tags($total['text']))));

 // Calcula o valor da parcela de acordo com o tipo de calculo utilizado
 if ($tipo_de_calculo == 0) {
   $valor_total = ($preco_numero * pow(1+($juros/100), $qtd_parcelas));
   $max_parcelas = intval($valor_total/$parcela_minima);
   if ($max_parcelas < $qtd_parcelas) { $qtd_parcelas = $max_parcelas; }
   $valor_parcela = $valor_total/$qtd_parcelas;
 }
 if ($tipo_de_calculo == 1) {
   $valor_total = ($preco_numero * ($juros/100));
   $max_parcelas = intval($valor_total/$parcela_minima);
   if ($max_parcelas < $qtd_parcelas) { $qtd_parcelas = $max_parcelas; }
   $valor_parcela = $valor_total/(1-(1/(pow(1+($juros/100), $qtd_parcelas))));
 }
 
 // Exibe as frases de parcelamento

 echo $total['text'] .  ' Ou <span style="font-size: 22px; font-weight: bold; color: #7FCE58;">' . $qtd_parcelas . 'x</span> de <span style="font-size: 22px; font-weight: bold; color: #7FCE58;">' . $moeda_da_loja . number_format($valor_parcela, 2, ',', '.');
 if ($juros == 0) { echo '</span> s/ juros</div>'; } 
				} else {
echo $total['text']; 
				}


		




		?></td>
	  </tr>
	  <?php } ?>
	</table>
  </div>

	<div class="checkout" style="text-align: right; margin-bottom: 30px;">
			<a class="button" href="<?php echo $cart; ?>" style="background-color: #999"><span><?php echo $button_shopping; ?></span></a> 
			<a class="button" href="<?php echo $checkout; ?>"><span><?php echo $button_checkout; ?></span></a>
	</div>

  </div>
  </div>
  <?php echo $content_bottom; ?></div>

<?php echo $column_right; ?>

<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});

<?php if ($next == 'coupon') { ?>
$('#use_coupon').trigger('click');
<?php } ?>
<?php if ($next == 'voucher') { ?>
$('#use_voucher').trigger('click');
<?php } ?>
<?php if ($next == 'reward') { ?>
$('#use_reward').trigger('click');
<?php } ?>
<?php if ($next == 'shipping') { ?>
$('#shipping_estimate').trigger('click');
<?php } ?>
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/theme385/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/theme385/image/close-1.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio table table-bordered table-hover" style="border: 0px !important;">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="btn" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="btn" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/theme385/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';
					
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}
	
					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>