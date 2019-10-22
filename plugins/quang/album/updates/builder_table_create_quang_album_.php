<?php namespace Quang\Album\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangAlbum extends Migration
{
    public function up()
    {
        Schema::create('quang_album_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->text('descritption')->nullable();
            $table->boolean('is_active')->default(1);
            $table->text('content')->nullable();
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_album_');
    }
}
