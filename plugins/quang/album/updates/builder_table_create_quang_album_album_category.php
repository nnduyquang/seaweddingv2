<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangAlbumAlbumCategory extends Migration
{
    public function up()
    {
        Schema::create('quang_album_album_category', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('album_id');
            $table->integer('category_id');
            $table->primary(['album_id','category_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_album_album_category');
    }
}
