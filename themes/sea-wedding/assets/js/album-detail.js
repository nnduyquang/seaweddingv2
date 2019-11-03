var pluginAlbum = {
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





});
