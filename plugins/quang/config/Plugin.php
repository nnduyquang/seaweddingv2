<?php namespace Quang\Config;


use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
        return[
            'Quang\Config\Components\Sliders'=>'sliders',
            'Quang\Config\Components\Config_Description'=>'config_description',
            'Quang\Config\Components\Config_Script_Fanpage'=>'config_script_fanpage',
            'Quang\Config\Components\Config_Address_Company'=>'config_address_company',
            'Quang\Config\Components\Config_Hotline_Show'=>'config_hotline_show',
            'Quang\Config\Components\Config_Email_Company'=>'config_email_company',
            'Quang\Config\Components\Config_Name_Company'=>'config_name_company',
            'Quang\Config\Components\Config_Phone'=>'config_phone',
            'Quang\Config\Components\Config_Script_Header'=>'config_script_header',
            'Quang\Config\Components\Config_Script_Body'=>'config_script_body',
        ];
    }

    public function registerSettings()
    {
    }
}
