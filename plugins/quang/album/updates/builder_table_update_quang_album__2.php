<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangAlbum2 extends Migration
{
    public function up()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->text('photos')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->dropColumn('photos');
        });
    }
}
