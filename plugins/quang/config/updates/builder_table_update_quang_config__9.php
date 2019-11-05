<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig9 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->text('config_logo')->nullable()->unsigned(false)->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->string('config_logo', 191)->nullable()->unsigned(false)->default('null')->change();
        });
    }
}
