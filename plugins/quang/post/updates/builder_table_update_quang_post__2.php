<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPost2 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_', function($table)
        {
            $table->string('slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
