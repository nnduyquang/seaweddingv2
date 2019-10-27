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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/post/components/post_category/default.htm */
class __TwigTemplate_d220d13385160d1d82cd6558c1a86724ec2f1a255face3bfda636fc128bede1a extends \Twig\Template
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
        $context["post_categories"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "postCategories", [], "any", false, false, false, 1);
        // line 2
        echo "<div class=\"sidebar-sea\" id=\"sidebar_service\">
    <h3>Dịch vụ của chúng tôi</h3>
    <ul>
        ";
        // line 5
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["post_categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post_category"]) {
            // line 6
            echo "        <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_category"], "url", [], "any", false, false, false, 6), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_category"], "title", [], "any", false, false, false, 6), "html", null, true);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post_category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 8
        echo "    </ul>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/post_category/default.htm";
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
        return new Source("{% set post_categories=__SELF__.postCategories %}
<div class=\"sidebar-sea\" id=\"sidebar_service\">
    <h3>Dịch vụ của chúng tôi</h3>
    <ul>
        {% for post_category in post_categories %}
        <li><a href=\"{{post_category.url}}\">{{post_category.title}}</a></li>
        {% endfor %}
    </ul>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/post_category/default.htm", "");
    }
}
