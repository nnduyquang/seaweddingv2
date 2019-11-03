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

/* E:\xampp\htdocs\seaweddingv2/themes/sea-wedding/pages/chi-tiet-uu-dai.htm */
class __TwigTemplate_842f4e04a76587e04a090df405174ea7217a214fe261f012e84a6d471396d106 extends \Twig\Template
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
        echo "<div id=\"promo_d_1\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-9 p-0\">
                <div class=\"description\">
                    <div class=\"block-01\">
                       ";
        // line 9
        echo twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "content", [], "any", false, false, false, 9);
        echo "
                    </div>
                </div>
            </div>
            <div class=\"col-md-3\">
                <div class=\"contain\">
                    ";
        // line 15
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["post_all_service"] ?? null), "posts", [], "any", false, false, false, 15);
        // line 16
        echo "                    <div class=\"sidebar-sea\" id=\"sidebar_service\">
                        <h3>Dịch vụ của chúng tôi</h3>
                        <ul>
                            ";
        // line 19
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post_category"]) {
            // line 20
            echo "                            <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_category"], "url", [], "any", false, false, false, 20), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_category"], "title", [], "any", false, false, false, 20), "html", null, true);
            echo "</a></li>
                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post_category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 22
        echo "                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-uu-dai.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  83 => 22,  72 => 20,  68 => 19,  63 => 16,  61 => 15,  52 => 9,  44 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set post=post_detail.post %}
{% partial \"title-page\" title_page=post.title %}
<div id=\"promo_d_1\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-9 p-0\">
                <div class=\"description\">
                    <div class=\"block-01\">
                       {{post.content|raw}}
                    </div>
                </div>
            </div>
            <div class=\"col-md-3\">
                <div class=\"contain\">
                    {% set posts=post_all_service.posts %}
                    <div class=\"sidebar-sea\" id=\"sidebar_service\">
                        <h3>Dịch vụ của chúng tôi</h3>
                        <ul>
                            {% for post_category in posts %}
                            <li><a href=\"{{post_category.url}}\">{{post_category.title}}</a></li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/pages/chi-tiet-uu-dai.htm", "");
    }
}
