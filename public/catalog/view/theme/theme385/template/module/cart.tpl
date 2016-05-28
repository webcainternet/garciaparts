<div id="cart" >

  <div class="heading">
	<span class="link_a"> 
		<i class="fa fa-shopping-cart"></i>
		<b><?php echo $heading_title; ?></b>
		<span class="sc-button"></span>
		<span id="cart-total2"><?php echo $text_items2; ?></span>

		<?php $itenssempreco = explode("-", $text_items); ?>

		<span id="cart-total" style="color: #FFF;"><?php echo $itenssempreco[0]; ?></span>
		<i class="fa fa-caret-down"></i>
		<span class="clear"></span>
		</span>
	</div>
	
  <div class="content">
  <div class="content-scroll">
	
	<?php
	
	 if ($products || $vouchers) { 
	 
	 ?>
	 <span class="latest-added"><?php echo $text_latest_added;?></span>
	<br /><br />
	<div class="mini-cart-info">
	  <table class="cart">
		<?php $i=0; $products=array_reverse($products);  foreach ($products as $product) {
			$i++;
			if ($i>4) break;
		 ?>
		<tr>
		  <td class="image"><?php if ($product['thumb']) { ?>
			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
			<?php } ?></td>
		  <td class="name" style="font-size: 12px;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
			<div>
			  <?php foreach ($product['option'] as $option) { ?>
			  - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
			  <?php } ?>
			</div>
			  <span class="quantity">x&nbsp;<?php echo $product['quantity']; ?></span>
			  <span class="total"><?php echo $product['total']; ?></span>
			  <div class="remove"><span onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');"  ><i class="fa fa-times-circle"></i><?php echo $button_remove; ?></span></div>
			  </td>
		  <!--td class="quantity">x&nbsp;<?php //echo $product['quantity']; ?></td-->
		  <!--td class="total"><?php //echo $product['total']; ?></td-->
		  
		</tr>
		<?php } ?>
		<?php foreach ($vouchers as $voucher) { ?>
		<tr>
		  <td class="image"></td>
		  <td class="name" style="font-size: 12px;"><?php echo $voucher['description']; ?>
			<div class="remove"><span alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');"><i class="fa fa-times-circle" ></i><?php echo $button_remove; ?></span></div>
			</td>
		  <!--<td class="quantity">x&nbsp;1</td>-->
		  <!--<td class="total"><?php echo $voucher['amount']; ?></td>-->
		  
		</tr>
		<?php } ?>
	  </table>
	</div>
	<div>
	  <table class="total">
		<?php foreach ($totals as $total) { 
			if ($total['title'] == 'Total') {
		?>
		<tr>
		  <td align="right" class="total-right"><b><?php echo $total['title']; ?>:</b></td>



<?php
 /*
   Configuracoes do sistema de parcelamento
   ----------------------------------------
   $qtd_parcelas = Define a quantidade de parcelas a ser exibida para os produtos
   $juros = Taxa de juros mensal (deixe em 0 para parcelamento sem juros)
   $moeda_da_loja = Permite especificar a moeda utilizada na loja
 
   $tipo_de_calculo = Permite escolher o tipo de calculo a ser utilizado
   0 = Juros simples (Pagamento Digital)
   1 = Tabela Price (PagSeguro e outros)
 */
 
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
 echo '<td align="left" class="total-left"><span style="font-size: 22px; font-weight: bold; color: #7FCE58;">' . $qtd_parcelas . 'x</span> de <span style="font-size: 22px; font-weight: bold; color: #7FCE58;">' . $moeda_da_loja . number_format($valor_parcela, 2, ',', '.');
 if ($juros == 0) { echo '</span> s/ juros</td>'; } 
 ?>

		</tr>
		<? } ?>
		<?php } ?>
	  </table>
	</div>
	<div class="checkout">
			<a class="button" href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span></a> 
			<a class="button" href="<?php echo $checkout; ?>"><span><?php echo $text_checkout; ?></span></a>
	</div>
	<?php } else { ?>
	<div class="empty"><?php echo $text_empty; ?></div>
	<?php } ?>
  </div>
  </div>
</div>
