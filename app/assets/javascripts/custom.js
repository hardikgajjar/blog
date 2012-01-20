jQuery(document).ready(function(){
    $("select, input:checkbox, input:radio, input:file").uniform();

    jQuery('#mainmenu li').each(function(){
        if(jQuery(this).attr('id')=='<?php echo $menu ?>') {
            jQuery(this).attr('class','current');
        }
    });
    jQuery('input.checkall').click(function() {
        var temp = jQuery(this).attr('title');
        jQuery("input[type='checkbox']").attr('checked', jQuery(this).attr('checked') );
    });
});