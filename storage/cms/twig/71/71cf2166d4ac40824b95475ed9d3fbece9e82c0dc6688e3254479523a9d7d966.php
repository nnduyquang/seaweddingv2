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

/* C:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/chi-tiet-tin-tuc.htm */
class __TwigTemplate_10049957db50c7343920eb02a473b679f0e4eacab1d8cc427389f519b2ddb93e extends \Twig\Template
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
        $context["post"] = twig_get_attribute($this->env, $this->source, ($context["post_detail"] ?? null), "post", [], "any", false, false, false, 1);
        // line 2
        $context['__cms_partial_params'] = [];
        $context['__cms_partial_params']['title_page'] = twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, false, 2)        ;
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("title-page"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 3
        echo "<div id=\"blo_d_1\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-9 p-0\">
                <div class=\"description\">
                    ";
        // line 8
        echo twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "content", [], "any", false, false, false, 8);
        echo "
                </div>
            </div>
            <div class=\"col-md-3\">
                ";
        // line 12
        $context['__cms_component_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->componentFunction("posts_other"        , $context['__cms_component_params']        );
        unset($context['__cms_component_params']);
        // line 13
        echo "            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-tin-tuc.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  62 => 13,  58 => 12,  51 => 8,  44 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set post=post_detail.post %}
{% partial \"title-page\" title_page=post.title %}
<div id=\"blo_d_1\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-9 p-0\">
                <div class=\"description\">
                    {{post.content|raw}}
                </div>
            </div>
            <div class=\"col-md-3\">
                {% component 'posts_other' %}
            </div>
        </div>
    </div>
</div>", "C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-tin-tuc.htm", "");
    }
}
