$(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() > 300){
            $('.navbar-default').addClass('navbar-shrink');
        }
        else{
            $('.navbar-default').removeClass('navbar-shrink');
        }
    });
});