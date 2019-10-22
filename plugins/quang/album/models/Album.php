<?php namespace Quang\Album\Models;

use Model;

/**
 * Model
 */
class Album extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_album_';

    /**
     * @var array Validation rules
     */
    public $rules = [
        'title' => 'required'
    ];
    protected $jsonable=['photos'];
    /* Relation */
    public $belongsToMany = [
        'category' => [
            'Quang\Album\Models\Category',
            'table'=>'quang_album_album_category',
            'order'=>'title'
        ]
    ];
    public function setUrl($pageName, $controller, array $urlParams = array())
    {
        $params = [
            array_get($urlParams, 'id', 'id')   => $this->id,
            array_get($urlParams, 'slug', 'slug') => $this->slug,
        ];

        $params['category'] = $this->category->count() ? $this->category->first()->slug : null;

        // Expose published year, month and day as URL parameters.
        if ($this->published) {
            $params[array_get($urlParams, 'year', 'year')] = $this->published_at->format('Y');
            $params[array_get($urlParams, 'month', 'month')] = $this->published_at->format('m');
            $params[array_get($urlParams, 'day', 'day')] = $this->published_at->format('d');
        }

        return $this->url = $controller->pageUrl($pageName, $params);
    }
}
