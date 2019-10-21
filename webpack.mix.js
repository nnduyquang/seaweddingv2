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

mix.js('resources/js/app.js', 'public/js')
    .sass('resources/sass/app.scss', 'public/css')
    .sass('resources/sass/seaweddingv2/frontend/common/common.scss', '../themes/sea-wedding/assets/css/common.css').options({processCssUrls: false})
    .sass('resources/sass/seaweddingv2/frontend/frontend.scss', '../themes/sea-wedding/assets/css/frontend.css').options({processCssUrls: false})
    .sass('resources/sass/seaweddingv2/frontend/reset.scss', '../themes/sea-wedding/assets/css/reset.css').options({processCssUrls: false})
    .styles('resources/js/common/common.js', 'themes/sea-wedding/assets/js/common.js')
