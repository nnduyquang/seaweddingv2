<?php namespace Quang\Page\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangPage extends Migration
{
    public function up()
    {
        Schema::table('quang_page_', function($table)
        {
            $table->string('slug')->nullable();
        
        });
    }
    
    public function down()
    {
        Schema::table('quang_page_', function($table)
        {
            $table->dropColumn('slug');
    
        });
    }
}
