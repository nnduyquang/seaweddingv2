<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPostCategory5 extends Migration
{
    public function up()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->string('img_primary')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_post_category', function($table)
        {
            $table->dropColumn('img_primary');
        });
    }
}
