<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPost4 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_', function($table)
        {
    
            $table->string('img_primary', 191)->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_', function($table)
        {
    
            $table->string('img_primary', 255)->default('NULL')->change();
        });
    }
}
