<?php namespace Quang\Post;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Post\Components\Quang_Post' => 'posts',
            'Quang\Post\Components\Post_Other' => 'posts_other',
            'Quang\Post\Components\Post_Detail' => 'post_detail',
            'Quang\Post\Components\Post_All' => 'post_all',
            'Quang\Post\Components\Category_Child' => 'categories_child',
        ];
    }

    public function registerSettings()
    {
    }
}
