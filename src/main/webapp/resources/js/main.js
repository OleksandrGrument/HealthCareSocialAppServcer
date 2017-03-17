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
        language: {
            url: "/resources/js/dataTables/dataTables.korean.lg"
        }
    });

    // Recipes open link
    $('.recipesOpenLink').on('click', function() {
        var url = $("input[name=url]").val();
        var win = window.open(url, '_blank');
        win.focus();
    });

    // Tooltipe
    $('[data-toggle="tooltip"]').tooltip();

    // Delete confirm
    function sebSweetConfirm(originLink){
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then(function(isConfirm){
            if (isConfirm) {
                window.location.href = originLink;
            }
        })
    }

    $('.deleteConfirm').click(function(event){
        event.preventDefault();
        var originLink = $(this).attr("href");
        sebSweetConfirm(originLink);
    });

    $("#tenFilesInput").fileinput({
        allowedFileExtensions : ['jpg', 'jpeg','png'],
        overwriteInitial: false,
        maxFileSize: 1024,
        maxFilesNum: 10,
    });

    // pushNotificationsForm from validation
    $('#pushNotificationsForm').formValidation({
        framework: 'bootstrap',
        excluded: ':disabled',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            phoneNumber: {
                validators: {
                    notEmpty: {
                        message: 'The notice id is required'
                    },
                    regexp: {
                        message: 'The notice id can only contain the digits',
                        regexp: /^[0-9  ]+$/
                    }
                }
            },
            notification: {
                validators: {
                    notEmpty: {
                        message: 'The notification is required'
                    }
                }
            }
        }
    });
});


// CKEDITOR show
var editor = CKEDITOR.replace('editor', {
    toolbar : 'Basic',
    width : '100%',
    height : '250',
});
editor.add;
