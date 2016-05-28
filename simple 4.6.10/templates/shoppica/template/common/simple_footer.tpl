

      <?php echo $content_bottom; ?>

    </div>

    <?php if ($this->document->shoppica_column_position == "right" && $column_right): ?>
    <div id="right_col" class="grid_<?php echo $side_col; ?>">
    <?php echo $column_right; ?>
    </div>
    <?php endif; ?>

  </div>
  <!-- end of content -->


<?php echo $footer; ?>
