<?php namespace Quang\Config\Components;
use Cms\Classes\ComponentBase;
use Quang\Config\Models\Config;

class Config_Hotline extends ComponentBase{
    public function componentDetails()
    {
        return [
            'name'=>'Cấu hình hotline',
            'descrition'=>'Cấu hình hotline'
        ];
    }
    public function defineProperties()
    {
        return [
            'hotlineType' => [
                'title' => 'Chọn loại hotline hiển thị',
                'description' => 'Chọn loại hotline hiển thị',
                'type' => 'dropdown'

            ],
        ];
    }
    public function getHotlineTypeOptions()
    {
        $hotlineType = array_flip(Config::first()->config_hotline[0]);
        return $hotlineType;
    }
    public function onRun(){
        $this->configHotline=$this->loadConfigHotline();
    }
    public function loadConfigHotline(){
        $key=$this->property('hotlineType');
        return $key;
    }
    public $configHotline;
}
