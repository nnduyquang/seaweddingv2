<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPostCategory6 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->text('img_list')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->dropColumn('img_list');
        
        });
    }
}
