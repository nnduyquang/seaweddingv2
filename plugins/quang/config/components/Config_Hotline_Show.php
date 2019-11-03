<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Hotline_Show extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình điện thoại hotline show',
            'descrition'=>'Cấu hình điện thoại hotline show'
        ];
    }
    public function onRun(){
        $this->configHotlineShow=$this->loadConfigHotlineShow();
    }
    public function loadConfigHotlineShow(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_hotline_show;
    }
    public $configHotlineShow;
}
