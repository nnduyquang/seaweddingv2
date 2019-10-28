<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPostCategory4 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->integer('nest_left')->nullable()->change();
            $table->integer('nest_right')->nullable()->change();
            $table->integer('nest_depth')->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->integer('nest_left')->nullable(false)->change();
            $table->integer('nest_right')->nullable(false)->change();
            $table->integer('nest_depth')->nullable(false)->change();
        });
    }
}
