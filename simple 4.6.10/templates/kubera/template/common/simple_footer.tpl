</div>
            <!-- END CONTENT ALIGN -->
            <!-- START CONTENT BOTTOM -->
            <div class="content-bottom">
            <?php if($this->config->get('kb_layout_all') == '' || $this->config->get('kb_layout_all') == '3') { ?>
                <?php echo $content_bottom; ?>
            <?php } ?>
            </div>
            <!-- END CONTENT BOTTOM -->
        </div>
        <!-- END CONTENT CENTER -->
        <!-- START CONTENT BOTTOM FIRST -->
        <?php if($this->config->get('kb_layout_all') == '1' || $this->config->get('kb_layout_all') == '2') { ?>
        <div class="content-bottom content-bottom-first">
            <?php echo $content_bottom; ?>
        </div>
        <?php } ?>
        <!-- END CONTENT BOTTOM FIRST -->
    </div>
</div>
<!-- END CONTENT PAGE -->
<?php echo $footer; ?>