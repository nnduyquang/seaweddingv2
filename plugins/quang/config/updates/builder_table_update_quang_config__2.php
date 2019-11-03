<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig2 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->string('config_email_company')->nullable();
           
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_email_company');
            
        });
    }
}
