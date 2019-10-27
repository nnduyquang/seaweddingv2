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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/post/components/post_other/default.htm */
class __TwigTemplate_5dab810358cec54a366340076e6746948b6b42630b5aeb23a793e30f7ab6952f extends \Twig\Template
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
        $context["posts_other"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "others", [], "any", false, false, false, 1);
        // line 2
        echo "<div class=\"sidebar-sea\" id=\"sidebar_news\">
    <h3>Có thể bạn quan tâm</h3>
    <ul>
        ";
        // line 5
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts_other"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["post_other"]) {
            // line 6
            echo "        <li>
            <div class=\"row no-gutters\">
                <div class=\"col-md-4\">
                    <a href=\"";
            // line 9
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_other"], "url", [], "any", false, false, false, 9), "html", null, true);
            echo "\">

                        <img src=\"";
            // line 11
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post_other"], "img_primary", [], "any", false, false, false, 11));
            echo "\" alt=\"\">
                    </a>
                </div>
                <div class=\"col-md-8\"><a href=\"";
            // line 14
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_other"], "url", [], "any", false, false, false, 14), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post_other"], "title", [], "any", false, false, false, 14), "html", null, true);
            echo "</a></div>
            </div>
        </li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post_other'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "    </ul>
</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/post_other/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  76 => 18,  64 => 14,  58 => 11,  53 => 9,  48 => 6,  44 => 5,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set posts_other=__SELF__.others %}
<div class=\"sidebar-sea\" id=\"sidebar_news\">
    <h3>Có thể bạn quan tâm</h3>
    <ul>
        {% for post_other in posts_other %}
        <li>
            <div class=\"row no-gutters\">
                <div class=\"col-md-4\">
                    <a href=\"{{post_other.url}}\">

                        <img src=\"{{post_other.img_primary|media}}\" alt=\"\">
                    </a>
                </div>
                <div class=\"col-md-8\"><a href=\"{{post_other.url}}\">{{post_other.title}}</a></div>
            </div>
        </li>
        {% endfor %}
    </ul>
</div>", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/post/components/post_other/default.htm", "");
    }
}
