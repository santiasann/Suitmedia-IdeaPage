$(document).ready(function() {
    var currentURL = window.location.href;
    $('.header nav ul li a').removeClass('active');
    $('.header nav ul li a[href="' + currentURL + '"]').addClass('active');
});