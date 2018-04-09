$(function() {
    //caches a jQuery object containing the header element
    $('.menu-toggle').on('click', function(){
      $('.panini').toggleClass('close')
      $('.menu').toggleClass('menu--open');
    	$('body').toggleClass('overflow-hidden');
    })

    $('.menu a').on('click', function() {
      $('.menu').removeClass('menu--open')
      $('body').removeClass('overflow-hidden');
      $('.menu-toggle').removeClass('open')
    })
});
