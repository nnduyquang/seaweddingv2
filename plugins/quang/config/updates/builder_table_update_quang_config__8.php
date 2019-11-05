<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig8 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->string('config_favicon')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_favicon');
        });
    }
}
