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

/* E:\xampp\htdocs\seaweddingv2/plugins/quang/album/components/album_home/default.htm */
class __TwigTemplate_cfa61dabc2666ddd2d44805aa53f2b3f74c40e1b30fd6b239aa8a47a3d0d8f32 extends \Twig\Template
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
        $context["album_homes"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "albums", [], "any", false, false, false, 1);
        // line 2
        echo "<div id=\"h_4\" class=\"pt-4 pb-4\">
    <div class=\"title\">
        <h2>ALBUM GALLERY</h2>
        <p>hãy để chúng tôi là một phần trong ngày trọng đại của bạn</p>
    </div>
    <div class=\"row no-gutters\">
        ";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["album_homes"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["album"]) {
            // line 9
            echo "        <div class=\"col-md-4\">
            <div class=\"one-item\">
                <div class=\"img\">
                    <a href=\"";
            // line 12
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["album"], "url", [], "any", false, false, false, 12), "html", null, true);
            echo "\">

                        <img src=\"";
            // line 14
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["album"], "img_primary", [], "any", false, false, false, 14));
            echo "\" alt=\"\">
                        <div class=\"content\">
                            <i class=\"far fa-heart\"></i>
                            <h3 class=\"title\">";
            // line 17
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["album"], "title", [], "any", false, false, false, 17), "html", null, true);
            echo "</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['album'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 24
        echo "    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_home/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  80 => 24,  67 => 17,  61 => 14,  56 => 12,  51 => 9,  47 => 8,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set album_homes=__SELF__.albums %}
<div id=\"h_4\" class=\"pt-4 pb-4\">
    <div class=\"title\">
        <h2>ALBUM GALLERY</h2>
        <p>hãy để chúng tôi là một phần trong ngày trọng đại của bạn</p>
    </div>
    <div class=\"row no-gutters\">
        {% for album in album_homes %}
        <div class=\"col-md-4\">
            <div class=\"one-item\">
                <div class=\"img\">
                    <a href=\"{{ album.url }}\">

                        <img src=\"{{album.img_primary|media}}\" alt=\"\">
                        <div class=\"content\">
                            <i class=\"far fa-heart\"></i>
                            <h3 class=\"title\">{{album.title}}</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        {% endfor %}
    </div>
</div>
", "E:\\xampp\\htdocs\\seaweddingv2/plugins/quang/album/components/album_home/default.htm", "");
    }
}
