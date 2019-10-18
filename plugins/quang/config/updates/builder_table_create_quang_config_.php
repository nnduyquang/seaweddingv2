<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangConfig extends Migration
{
    public function up()
    {
        Schema::create('quang_config_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('id');
            $table->string('config_logo')->nullable();
            $table->string('config_name_company')->nullable();
            $table->text('config_descrtiption_company')->nullable();
            $table->text('config_address_company')->nullable();
            $table->text('config_script_header')->nullable();
            $table->text('	 config_script_body')->nullable();
            $table->text('config_slider')->nullable();
            $table->text('config_contact_detail')->nullable();
            $table->string('	 config_hotline_call')->nullable();
            $table->string('	 config_hotline_show')->nullable();
            $table->string('	 config_phone')->nullable();
            $table->primary(['id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_config_');
    }
}
