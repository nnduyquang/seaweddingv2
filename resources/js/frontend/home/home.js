var pluginHomes = {
    h6OwlCarousel: $('#h_6 #owl-project'),
    slider: $('#slider'),
    h9CarouselSlider:$('#h_9 ul')
};
$(document).ready(function () {
    function runH6OwlCarousel() {
        pluginHomes.h6OwlCarousel.owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            dots: false,
            autoplay:true,
            autoplayTimeout:3000,
            autoplayHoverPause:true,
            responsive: {
                0: {
                    items: 3
                },
                600: {
                    items: 4
                },
                1000: {
                    items: 4
                }
            }
        });
        var owl = $('#owl-project');

        $('.btn_next').click(function () {
            owl.trigger('next.owl.carousel');
        })
        $('.btn_pre').click(function () {
            owl.trigger('prev.owl.carousel', [300]);
        })
    }
    runH6OwlCarousel();
    function runH9CarouselSlider(){
        pluginHomes.h9CarouselSlider.lightSlider({
            // adaptiveHeight:true,
            // item:1,
            // slideMargin:0,
            // loop:true
            auto: false,
            controls: true,
            item: 1,
            mode: 'fade',
            pauseOnHover: false,
            loop: false,
            pause: 6000,
            responsive: [{
                breakpoint: 1023,
                settings: {
                    item: 2
                }
            }, {
                breakpoint: 860,
                settings: {
                    item: 1
                }
            }]
        });
    }
    runH9CarouselSlider();
});
