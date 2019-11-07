<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangAlbum6 extends Migration
{
    public function up()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->dropColumn('nest_left');
            $table->dropColumn('nest_right');
            $table->dropColumn('nest_depth');
        });
    }
    
    public function down()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->integer('nest_left')->nullable()->default(0);
            $table->integer('nest_right')->nullable()->default(0);
            $table->integer('nest_depth')->nullable()->default(0);
        });
    }
}
