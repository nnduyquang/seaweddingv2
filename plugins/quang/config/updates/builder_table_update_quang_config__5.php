<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig5 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->text('config_description_company')->nullable()->default('null');
                  $table->dropColumn('config_descrtiption_company');
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_description_company');
            
        });
    }
}
