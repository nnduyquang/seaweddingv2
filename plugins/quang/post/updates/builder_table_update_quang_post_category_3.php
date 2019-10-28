<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPostCategory3 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->integer('nest_left');
            $table->integer('nest_right');
            $table->integer('nest_depth');
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->dropColumn('nest_left');
            $table->dropColumn('nest_right');
            $table->dropColumn('nest_depth');
        });
    }
}
