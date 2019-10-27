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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/album/components/album_page/default.htm */
class __TwigTemplate_a53b77cce13bf1aca745fb785d2cf2293d32e2209668f162d45ee20bb56c65dd extends \Twig\Template
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
        $context["albums_pages"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "albumsPage", [], "any", false, false, false, 1);
        // line 2
        echo "<div id=\"alb_2\">

    <div class=\"container\">
        <div class=\"row\">
            ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["albums_pages"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["album_page"]) {
            // line 7
            echo "            <div class=\"col-md-4 mb-1 p-2\">
                <div class=\"post-item-wp\">
                    <div class=\"entry-thumbnail\"><img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\" data-src=\"";
            // line 9
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["album_page"], "img_primary", [], "any", false, false, false, 9));
            echo "\" alt=\"\"></div>
                    <div class=\"entry-content\">
                        <div class=\"content-inner\"><a href=\"";
            // line 11
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["album_page"], "url", [], "any", false, false, false, 11), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["album_page"], "title", [], "any", false, false, false, 11), "html", null, true);
            echo "</a></div>
                    </div>
                </div>
            </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['album_page'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo "        </div>
    </div>

</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_page/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  71 => 16,  58 => 11,  53 => 9,  49 => 7,  45 => 6,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set albums_pages=__SELF__.albumsPage %}
<div id=\"alb_2\">

    <div class=\"container\">
        <div class=\"row\">
            {% for album_page in albums_pages %}
            <div class=\"col-md-4 mb-1 p-2\">
                <div class=\"post-item-wp\">
                    <div class=\"entry-thumbnail\"><img class=\"lazy-img-src\" src=\"https://ik.imagekit.io/demo/img/image2.jpeg?tr=h-1:h-378\" data-src=\"{{album_page.img_primary|media}}\" alt=\"\"></div>
                    <div class=\"entry-content\">
                        <div class=\"content-inner\"><a href=\"{{ album_page.url }}\">{{album_page.title}}</a></div>
                    </div>
                </div>
            </div>
            {% endfor %}
        </div>
    </div>

</div>", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_page/default.htm", "");
    }
}
