<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig11 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->text('config_hotline')->nullable();
            $table->string('config_phone', 191)->nullable()->unsigned(false)->default('null')->change();
            $table->dropColumn('config_hotline_call');
            $table->dropColumn('config_hotline_show');
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_hotline');
            $table->text('config_phone')->nullable()->unsigned(false)->default(null)->change();
            $table->string('config_hotline_call', 191)->nullable()->default('null');
            $table->string('config_hotline_show', 191)->nullable()->default('null');
        });
    }
}
