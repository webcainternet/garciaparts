</div>
  <!-- Column right start -->
  <?php echo $column_right; ?>
  <!-- end: Column right -->
      </div>
    </div>
  <?php if(isset($themeSettings['homelayoutstyle']) && ($themeSettings['homelayoutstyle'] == 'disable')){ ?>
  <div class="container">
  <?php } ?>
  <?php echo $content_bottom; ?>
  <?php if(isset($themeSettings['homelayoutstyle']) && ($themeSettings['homelayoutstyle'] == 'disable')){ ?>
  </div>
  <?php } ?>
    <?php echo $footer; ?>