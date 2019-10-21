<?php namespace Quang\Post\Models;

use Model;

/**
 * Model
 */
class Posts extends Model
{
    use \October\Rain\Database\Traits\Validation;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_post_';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    /* Relations */
    public $belongsToMany = [
        'category' => [
            'Quang\Post\Models\Category',
            'table'=>'quang_post_post_category',
            'order'=>'category_title'
        ]
    ];

    public $attachOne=[
        'img_primary'=>'System\Models\File'
    ];
}
