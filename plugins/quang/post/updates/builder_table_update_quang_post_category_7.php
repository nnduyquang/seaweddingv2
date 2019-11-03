<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPostCategory7 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->text('photos')->nullable();
            $table->dropColumn('img_list');
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->dropColumn('photos');
           
        });
    }
}
