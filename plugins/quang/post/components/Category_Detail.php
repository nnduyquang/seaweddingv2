<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Cms\Classes\Page;
use Quang\Post\Models\Category;

class Category_Detail extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Chi tiết danh mục',
            'description' => 'Hiển thị chi tiết danh mục'
        ];
    }

    public function defineProperties()
    {
        return [
            'identifierValue' => [
                'title' => 'Chọn định danh',
                'description' => 'Chọn định danh',
                'type'        => 'string',
                'default'     => '{{ :slug }}',
                'validation'  => [
                    'required' => [
                        'message' => 'Vui lòng nhập'
                    ]
                ]

            ],
        ];
    }

    public function loadCategory()
    {
        $query = Category::where('slug', $this->property('identifierValue'))->first();
        return $query;
    }

    public function onRun()
    {
        $this->category_detail = $this->loadCategory();
    }

    public $category_detail;
}