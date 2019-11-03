<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Phone extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình điện thoại',
            'descrition'=>'Cấu hình điện thoại'
        ];
    }
    public function onRun(){
        $this->configPhone=$this->loadConfigPhone();
    }
    public function loadConfigPhone(){
//        dd(Config::first()->config_slider);
        return Config::first()->config_phone;
    }
    public $configPhone;
}
