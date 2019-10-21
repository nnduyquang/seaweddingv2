<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPostPostCategory extends Migration
{
    public function up()
    {
        Schema::table('quang_post_post_category', function($table)
        {
            $table->dropPrimary(['post_id','category_id']);
            $table->renameColumn('post_id', 'posts_id');
            $table->primary(['posts_id','category_id']);
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_post_category', function($table)
        {
            $table->dropPrimary(['posts_id','category_id']);
            $table->renameColumn('posts_id', 'post_id');
            $table->primary(['post_id','category_id']);
        });
    }
}
