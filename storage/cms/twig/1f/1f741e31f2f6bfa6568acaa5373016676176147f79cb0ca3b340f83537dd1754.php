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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/album/components/album_category/default.htm */
class __TwigTemplate_856f2e36d58f9c30653a654f5eb1461d54ae09dcdd097a4fbfbb3d7afc6468ff extends \Twig\Template
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
        $context["albums_categories"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "albumsCategory", [], "any", false, false, false, 1);
        // line 2
        echo "<div class=\"sidebar-sea\" id=\"sidebar_service\">
    <h3>Dịch vụ của chúng tôi</h3>
    <ul>
        ";
        // line 5
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["albums_categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["albums_category"]) {
            // line 6
            echo "        <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["albums_category"], "url", [], "any", false, false, false, 6), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["albums_category"], "title", [], "any", false, false, false, 6), "html", null, true);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['albums_category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 8
        echo "    </ul>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_category/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  59 => 8,  48 => 6,  44 => 5,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set albums_categories=__SELF__.albumsCategory %}
<div class=\"sidebar-sea\" id=\"sidebar_service\">
    <h3>Dịch vụ của chúng tôi</h3>
    <ul>
        {% for albums_category in albums_categories %}
        <li><a href=\"{{albums_category.url}}\">{{albums_category.title}}</a></li>
        {% endfor %}
    </ul>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_category/default.htm", "");
    }
}
