<?php namespace Quang\Post\Models;

use Model;


/**
 * Model
 */
class Category extends Model
{
    use \October\Rain\Database\Traits\Validation;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_post_category';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
    public $belongsToMany = [
        'post' => [
            'Quang\Post\Models\Posts',
            'table'=>'quang_post_post_category',
        ]
    ];
    public function setUrl($pageName, $controller, array $urlParams = array())
    {
        $params = [
            array_get($urlParams, 'id', 'id')   => $this->id,
            array_get($urlParams, 'slug', 'slug')  => $this->slug,
        ];

        return $this->url = $controller->pageUrl($pageName, $params, false);
    }
}
