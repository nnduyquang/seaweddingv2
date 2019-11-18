var pluginAlbum = {
    sidebar_price: $('.price-category'),
    gridCollection: $('.grid-album'),
};
$(document).ready(function () {
    function runGridCollection() {
        var $grid = pluginAlbum.gridCollection.masonry({
            itemSelector: '.grid-item',
            percentPosition: true,
            columnWidth: '.grid-sizer'
        });

        $grid.imagesLoaded().progress(function () {
            $grid.masonry();

        });
        $('.fancybox').fancybox();
    }
    // $('#alb_1 .grid-item img').lazyload({
    //     effect: 'fadeIn'
    // });
    // $('#alb_1 .grid-item img').trigger('scroll');
    // $('#alb_1 .grid-item img').load(function() {
    //     runGridCollection();
    // });
    runGridCollection();
    $.fn.isInViewport= function() {
        var elementTop = $(this).offset().top;
        var elementBottom = elementTop + $(this).outerHeight();

        var viewportTop = $(window).scrollTop();
        var viewportBottom = viewportTop + $(window).height();

        return elementBottom > viewportTop && elementTop < viewportBottom;
    };
    function fixMenuOnScroll() {
        $(window).on("scroll", function (e) {
            if ($(this).scrollTop() > 150) {
                pluginAlbum.sidebar_price.addClass('is-scroll');
                if($('#footer').isInViewport()){
                    pluginAlbum.sidebar_price.removeClass('is-scroll');
                }else{
                    pluginAlbum.sidebar_price.addClass('is-scroll');
                }
            } else {
                pluginAlbum.sidebar_price.removeClass('is-scroll');
            }
        });
    }
    fixMenuOnScroll();





});
