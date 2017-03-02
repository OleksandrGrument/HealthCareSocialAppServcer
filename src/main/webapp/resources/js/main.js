"use strict";
jQuery(document).ready(function($) {

    // Back to top
    var offset = 300,
        offset_opacity = 1200,
        scroll_top_duration = 700,
        $back_to_top = $('.cd-top');

    $(window).scroll(function(){
        ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
        if( $(this).scrollTop() > offset_opacity ) {
            $back_to_top.addClass('cd-fade-out');
        }
    });

    $back_to_top.on('click', function(event){
        event.preventDefault();
        $('body,html').animate({
                scrollTop: 0 ,
            }, scroll_top_duration
        );
    });

    // Left menu block toggle
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    // Show nice tables
    $('#dataTable').DataTable({
        responsive: true,
        "columns": [
            { "width": "20px" },
            null,
            null,
            null,
            null,
            null
        ]
    });
});

// CKEDITOR show
var editor = CKEDITOR.replace('editor', {
    toolbar : 'Basic',
    width : '100%',
    height : '250',
});
editor.add;
