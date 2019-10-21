<?php namespace Quang\Post\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateQuangPost extends Migration
{
    public function up()
    {
        Schema::create('quang_post_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->text('description')->nullable();
            $table->text('content');
            $table->boolean('is_active')->default(0);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('quang_post_');
    }
}
