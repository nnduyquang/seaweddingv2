<?php namespace Quang\Album;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Album\Components\Album_Home' => 'albums',
            'Quang\Album\Components\Album_Other' => 'others',
            'Quang\Album\Components\Album_Page' => 'albums_page',
        ];
    }

    public function registerSettings()
    {
    }
//    public function registerMarkupTags()
//    {
//        return [
//            'functions' => [
//
//                'getImageSizeAttributes' => function($value) {
//
//                    if( !empty($value) ){
//
//                        $filePath = $value;
//
////                        dd(getimagesize($filePath));
//                       return list($width,$height) =getimagesize($filePath);
//
//
//
//
//
//                    }
//
//                }
//            ]
//        ];
//    }
    public function registerMarkupTags()
    {
        return [
            'functions' => [
                'image_width' => function ($value) {return $this->getImageWidth($value);},
                'image_height' => function ($value) {return $this->getImageHeight($value);},
            ],
        ];
    }
    public function getImageWidth($value) {
        list($width,$height) =getimagesize($value);
        return $width;
    }
    public function getImageHeight($value) {
        list($width,$height) =getimagesize($value);
        return $height;
    }

}
