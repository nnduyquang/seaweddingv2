<?php namespace Quang\Config;


use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return[
            'Quang\Config\Components\Sliders'=>'sliders'
        ];
    }

    public function registerSettings()
    {
    }
}
