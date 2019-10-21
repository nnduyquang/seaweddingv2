<?php namespace Quang\Post;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Post\Components\Quang_Post' => 'posts'
        ];
    }

    public function registerSettings()
    {
    }
}
