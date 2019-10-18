<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_slider');
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->text('config_slider')->nullable();
        });
    }
}
