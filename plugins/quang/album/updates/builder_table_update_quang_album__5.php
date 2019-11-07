<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangAlbum5 extends Migration
{
    public function up()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->integer('nest_left')->default(0)->change();
            $table->integer('nest_right')->default(0)->change();
            $table->integer('nest_depth')->default(0)->change();
        });
    }
    
    public function down()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->integer('nest_left')->default(null)->change();
            $table->integer('nest_right')->default(null)->change();
            $table->integer('nest_depth')->default(null)->change();
        });
    }
}
