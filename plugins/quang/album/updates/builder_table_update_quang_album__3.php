<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangAlbum3 extends Migration
{
    public function up()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->string('img_primary')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('quang_album_', function($table)
        {
            $table->dropColumn('img_primary');
        });
    }
}
