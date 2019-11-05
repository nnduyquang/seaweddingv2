<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig7 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->text('config_seo')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_seo');
        });
    }
}
