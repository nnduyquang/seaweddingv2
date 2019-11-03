<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* E:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/dich-vu.htm */
class __TwigTemplate_377885187abf9ca219c01d7b727ce1e2f534d6a249ea94346ee98ab7585e1d16 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $context['__cms_partial_params'] = [];
        $context['__cms_partial_params']['title_page'] = "Dịch vụ"        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("title-page"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 2
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all"] ?? null), "posts", [], "any", false, false, false, 2);
        // line 3
        echo "
<div id=\"ser1\">
    <div class=\"container\">
        <div class=\"content\">
            <div class=\"row\">
                ";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 9
            echo "                <div class=\"col-md-6\">
                    <div class=\"one-item lazy-background-img\" style=\"background-image:url(";
            // line 10
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "img_primary", [], "any", false, false, false, 10));
            echo ");\">
                        <div class=\"info\">
                            <h3><a href=\"\">";
            // line 12
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 12), "html", null, true);
            echo "</a></h3>
                            <hr>
                            <div class=\"description\">
                                ";
            // line 15
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "description", [], "any", false, false, false, 15), "html", null, true);
            echo "
                            </div>
                            <div class=\"button\"><a href=\"";
            // line 17
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 17), "html", null, true);
            echo "\">Xem thêm</a></div>
                        </div>
                    </div>
                </div>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 22
        echo "            </div>
        </div>

    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/dich-vu.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  85 => 22,  74 => 17,  69 => 15,  63 => 12,  58 => 10,  55 => 9,  51 => 8,  44 => 3,  42 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% partial 'title-page' title_page='Dịch vụ'%}
{% set posts=post_all.posts %}

<div id=\"ser1\">
    <div class=\"container\">
        <div class=\"content\">
            <div class=\"row\">
                {% for post in posts %}
                <div class=\"col-md-6\">
                    <div class=\"one-item lazy-background-img\" style=\"background-image:url({{post.img_primary|media}});\">
                        <div class=\"info\">
                            <h3><a href=\"\">{{post.title}}</a></h3>
                            <hr>
                            <div class=\"description\">
                                {{ post.description }}
                            </div>
                            <div class=\"button\"><a href=\"{{post.url}}\">Xem thêm</a></div>
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>

    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/dich-vu.htm", "");
    }
}
