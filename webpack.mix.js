const mix = require('laravel-mix');
// mix.setPublicPath('../');
mix.setResourceRoot('../');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */
path_node_modules = 'node_modules/';

// .js('resources/js/app.js', 'public/js')
// sass('resources/sass/app.scss', 'public/css')
mix.sass('resources/sass/seaweddingv2/frontend/common/common.scss', '../themes/sea-wedding/assets/css/common.css').options({processCssUrls: false})
    .sass('resources/sass/seaweddingv2/frontend/frontend.scss', '../themes/sea-wedding/assets/css/frontend.css').options({processCssUrls: false})
    .sass('resources/sass/seaweddingv2/frontend/reset.scss', '../themes/sea-wedding/assets/css/reset.css').options({processCssUrls: false})
    .styles('resources/js/common/common.js', 'themes/sea-wedding/assets/js/common.js')
    .styles('resources/js/frontend/home/home.js', 'themes/sea-wedding/assets/js/home.js')
    .styles([
        path_node_modules + 'fancybox/dist/js/jquery.fancybox.js',
        path_node_modules + 'imagesloaded/imagesloaded.pkgd.min.js',
        path_node_modules + 'masonry-layout/dist/masonry.pkgd.min.js',
        path_node_modules + 'owl.carousel/dist/owl.carousel.js',
        path_node_modules + 'lightslider/dist/js/lightslider.min.js',
    ], 'themes/sea-wedding/assets/js/core.common.js')
    .styles('resources/js/frontend/album-detail/album-detail.js', 'themes/sea-wedding/assets/js/album-detail.js')
    .styles([
        path_node_modules + 'fancybox/dist/css/jquery.fancybox.css',
        path_node_modules + 'owl.carousel/dist/assets/owl.carousel.css',
        path_node_modules + 'owl.carousel/dist/assets/owl.theme.default.css',
        path_node_modules + 'lightslider/dist/css/lightslider.min.css',

    ], 'themes/sea-wedding/assets/css/core.common.css')

