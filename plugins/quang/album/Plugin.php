<?php namespace Quang\Album;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return [
            'Quang\Album\Components\Album_Home' => 'albums'
        ];
    }

    public function registerSettings()
    {
    }
}
