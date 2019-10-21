<?php namespace Quang\Post\Components;

use Quang\Post\Classes\ComponentAbstract;
use Quang\Post\Models\Category;
use Cms\Classes\Page;


class Quang_Post extends ComponentAbstract
{
    public function componentDetails()
    {
        return [
            'name' => 'Danh Sách Bài Viết Theo Chuyên Mục',
            'description' => 'Danh Sách Bài Viết Theo Chuyên Mục'
        ];
    }

    public function defineProperties()
    {
        return [
            'results' => [
                'title' => 'Số lượng bài viết hiển thị',
                'description' => 'Hiển thị số lượng bài viết',
                'default' => 0,
                'validationPattern' => '^[0-9]+$',
                'validationMessage' => 'Chỉ nhập số'
            ],
            'categories' => [
                'title' => 'Chọn doanh mục',
                'description' => 'Bài viết hiển thị theo doanh mục',
                'type' => 'dropdown'

            ],
            'categoryPage' => [
                'title'       => 'rainlab.blog::lang.settings.posts_category',
                'description' => 'rainlab.blog::lang.settings.posts_category_description',
                'type'        => 'dropdown',
                'default'     => 'blog/category',
                'group'       => 'rainlab.blog::lang.settings.group_links',
            ],
            'postPage' => [
                'title'       => 'rainlab.blog::lang.settings.posts_post',
                'description' => 'rainlab.blog::lang.settings.posts_post_description',
                'type'        => 'dropdown',
                'default'     => 'blog/post',
                'group'       => 'rainlab.blog::lang.settings.group_links',
            ],
        ];
    }

    public function getCategoriesOptions()
    {
        $categoties = Category::all()->lists('category_title', 'slug');
        return $categoties;
    }
    public function getCategoryPageOptions()
    {
        return Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }

    public function getPostPageOptions()
    {
        return Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }

    public function onRun()
    {
        $this->prepareVars();
        $this->posts = $this->loadPost();
    }
    protected function prepareVars()
    {


        /*
         * Page links
         */
        $this->postPage = $this->page['postPage'] = $this->property('postPage');
        $this->categoryPage = $this->page['categoryPage'] = $this->property('categoryPage');
    }


    public function loadPost()
    {
        $query=Category::where('slug', $this->property('categories'))->first()->post()->get();
        if ($this->property('results') > 0) {
            $query = $query->take($this->property('results'));
        }
        $blogPostComponent = $this->getComponent('blogPost', $this->postPage);
        $blogPostsComponent = $this->getComponent('blogPosts', $this->categoryPage);
        $query->each(function ($post) use ($blogPostComponent, $blogPostsComponent) {
            $post->setUrl(
                $this->postPage,
                $this->controller,
                [
                    'slug' => $this->urlProperty($blogPostComponent, 'slug')
                ]
            );

            $post->category->each(function ($category) use ($blogPostsComponent) {
                $category->setUrl(
                    $this->categoryPage,
                    $this->controller,
                    [
                        'slug' => $this->urlProperty($blogPostsComponent, 'categoryFilter')
                    ]
                );
            });
        });
        return $query;

    }

    public $posts;
    public $postPage;
    public $categoryPage;
}
