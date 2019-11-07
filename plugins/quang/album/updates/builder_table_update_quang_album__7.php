<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangAlbum7 extends Migration
{
    public function up()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->integer('nest_left')->default(0);
            $table->integer('nest_right')->default(0);
            $table->integer('nest_depth')->default(0);
        });
    }
    
    public function down()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->dropColumn('nest_left');
            $table->dropColumn('nest_right');
            $table->dropColumn('nest_depth');
        });
    }
}
