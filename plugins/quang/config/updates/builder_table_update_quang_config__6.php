<?php namespace Quang\Config\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateQuangConfig6 extends Migration
{
    public function up()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->text('config_script_body')->nullable()->default('null');
            $table->string('config_hotline_call', 191)->nullable()->default('null');
            $table->string('config_hotline_show', 191)->nullable()->default('null');
            $table->string('config_phone', 191)->nullable()->default('null');
            $table->string('config_logo', 191)->default('null')->change();
            $table->string('config_name_company', 191)->default('null')->change();
            $table->text('config_address_company')->default('null')->change();
            $table->text('config_script_header')->default('null')->change();
            $table->text('config_contact_detail')->default('null')->change();
            $table->string('config_email_company', 255)->default('null')->change();
            $table->text('config_slider')->default('null')->change();
            $table->text('config_script_fanpage')->default('null')->change();
            $table->text('config_description_company')->default('null')->change();
            $table->dropColumn('	 config_script_body');
            $table->dropColumn('	 config_hotline_call');
            $table->dropColumn('	 config_hotline_show');
            $table->dropColumn('	 config_phone');
        });
    }
    
    public function down()
    {
        Schema::table('quang_config_', function($table)
        {
            $table->dropColumn('config_script_body');
            $table->dropColumn('config_hotline_call');
            $table->dropColumn('config_hotline_show');
            $table->dropColumn('config_phone');
            $table->string('config_logo', 191)->default('NULL')->change();
            $table->string('config_name_company', 191)->default('NULL')->change();
            $table->text('config_address_company')->default('NULL')->change();
            $table->text('config_script_header')->default('NULL')->change();
            $table->text('config_contact_detail')->default('NULL')->change();
            $table->string('config_email_company', 255)->default('NULL')->change();
            $table->text('config_slider')->default('NULL')->change();
            $table->text('config_script_fanpage')->default('NULL')->change();
            $table->text('config_description_company')->default('\'null\'')->change();
            $table->text('	 config_script_body')->nullable()->default('NULL');
            $table->string('	 config_hotline_call', 191)->nullable()->default('NULL');
            $table->string('	 config_hotline_show', 191)->nullable()->default('NULL');
            $table->string('	 config_phone', 191)->nullable()->default('NULL');
        });
    }
}
